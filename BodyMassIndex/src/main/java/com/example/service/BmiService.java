package com.example.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
import com.example.bean.BmiBean;
import com.example.bean.BmiHistory;
import com.example.dao.BmiDAOimpl;

@Service
public class BmiService {
	
	BmiDAOimpl impl = new BmiDAOimpl();
	
public boolean signinCheck(String email, String password)
{
	boolean temp = false;
	BmiBean bmibean = impl.getUser(email);
	if(bmibean!=null)
	{
		if(bmibean.getPassword().equals(password))
		{
			temp = true;
		}
	}
	
	return temp;
}


public int signUp(BmiBean bean)
	{
		return impl.addUser(bean);
	}


public int addUser(BmiBean bmibean)
{
	return impl.addUser(bmibean);
}


public double calculateBmi(double height,double weight)
	{
		double result;
		double h=(height/100)*(height/100);
		result= weight/h;
		return result;
	}

public double addHistory(BmiHistory history)
{
	return impl.addHistory(history);
}


public List<BmiHistory> viewHistory(String email) {
	return impl.viewHistory(email);
}

}