package com.sh.crud.ask.controller;


import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.ask.model.serivce.AskService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ask/ask")
public class AskServlet extends HttpServlet {
    private AskService askService = new AskService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/ask/ask.jsp").forward(req, resp);
    }

}