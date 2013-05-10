package com.example.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/streaming")
public class StreamingController 
{
	@RequestMapping(value="")
	public String createNewStream(Map<String, Object> map)
	{
		return "streaming";
	}
	
	@RequestMapping(value="/view")
	public String viewStream(Map<String, Object> map)
	{
		return "viewstream";
	}
}
