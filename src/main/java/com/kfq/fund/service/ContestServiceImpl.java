package com.kfq.fund.service;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kfq.fund.dao.IContestDAO;
import com.kfq.fund.vo.ContestVO;
import com.kfq.fund.vo.FileVO;
import com.kfq.fund.vo.JoinVO;

@Service
public class ContestServiceImpl implements IContestService{
	@Autowired
	private IContestDAO dao;
	
	public void setDao(IContestDAO dao) {
		this.dao = dao;
	}
	@Override
	public String existContest(String email) {
		return dao.existContest(email);
	}
	@Override
	public void insertContest(ContestVO contest) {
		dao.insertContest(contest);
	}
	@Override
	public void insertContestFile(MultipartHttpServletRequest request,int contestnum) {
		Iterator<String> itr = request.getFileNames();
		String title = request.getParameter("title");
		makedirectory("C://kfqproject/contest/"+title,contestnum);
		if(itr.hasNext()) {
			MultipartFile mpf = request.getFile(itr.next());
			try {
			saveFile(mpf,title,contestnum);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	

	private void deleteAllFile(String dir,int id) {
		File file = new File(dir);
		File[] fileList = file.listFiles();
		for(int i = 0;i <fileList.length;i++) {
			fileList[i].delete();
		}
		dao.deleteContestFile(id);
	}
	@Override
	public int insertlastContestid(String email) {
		return dao.insertlastContestid(email);
	}
	private boolean saveFile(MultipartFile mpf,String title,int contestnum) throws Exception{
		String fileName = mpf.getOriginalFilename();
		String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
		File destinationFile;
		String destinationFileName;
		String fileUrl = "C://kfqproject/contest/"+title+"/";
		String url = "/contest/"+title+"/";
		do {
			destinationFileName = RandomStringUtils.randomAlphabetic(32)+"."+fileNameExtension;
			destinationFile = new File(fileUrl+destinationFileName);
		}while(destinationFile.exists());
		destinationFile.getParentFile().mkdirs();
		mpf.transferTo(destinationFile);
		FileVO file = new FileVO();
		file.setBno(contestnum);
		file.setFilename(destinationFileName);
		file.setFileOriName(fileName);
		file.setFileurl(url);
		dao.insertContestFile(file);
		return true;
	}
	private void makedirectory(String dir,int id) {
		File directory = new File(dir);
		if(!directory.exists()) {
			try {
				directory.mkdirs();
			} catch (Exception e) {
				e.getStackTrace();
			}
		}else {
			deleteAllFile(dir,id);
		}
	}
	@Override
	public ContestVO existContestInfo(String email) {
		return dao.existContestInfo(email);
	}
	@Override
	public void updateContest(ContestVO contest) {
		dao.updateContest(contest);
	}
	@Override
	public void deleteContest(int id) {
		dao.deleteContest(id);
	}
	@Override
	public List<FileVO> getFiles(int id) {
		return dao.getFiles(id);
	}
	@Override
	public JSONObject insertJoinImage(MultipartFile mpf, int contestnum) {
		JSONObject jsonobject = new JSONObject();
		String title = dao.ContestName(contestnum);
		try {
			String destinationFileName = savejoinimage(mpf,title);
			jsonobject.put("url", "/join/"+title+"/"+destinationFileName);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsonobject;
	}
	private String savejoinimage(MultipartFile mpf, String title) throws Exception{	
		String fileroot = "C://kfqproject/join/"+title+"/";
		String originalFileName = mpf.getOriginalFilename();
		String extension = FilenameUtils.getExtension(originalFileName).toLowerCase();
		File destinationFile;
		String destinationFileName;
		do {
			destinationFileName = RandomStringUtils.randomAlphabetic(32)+"."+extension;
			destinationFile = new File(fileroot+destinationFileName);
		}while(destinationFile.exists());
		destinationFile.getParentFile().mkdirs();
		mpf.transferTo(destinationFile);
		return destinationFileName;
	}
	@Override
	public void insertJoin(JoinVO join) {
		dao.insertJoin(join);
	}
	@Override
	public List<ContestVO> getTop5(String search) {
		return dao.getTop5(search);
	}
	
}
