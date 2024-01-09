package com.sh.crud.booking.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/booking/bookingCheck")
public class BookingCheckServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {




        req.getRequestDispatcher("/WEB-INF/views/booking/bookingCheck.jsp").forward(req, resp);
    }
}