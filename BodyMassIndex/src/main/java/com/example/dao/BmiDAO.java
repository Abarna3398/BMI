package com.example.dao;

import java.util.List;
import com.example.bean.BmiBean;
import com.example.bean.BmiHistory;

public interface BmiDAO {

	public int addUser(BmiBean bmibean);
	public List<BmiBean> viewHistory(String email);
	public BmiBean getUser(String email);
	public int addHistory(BmiHistory history);
	
}
