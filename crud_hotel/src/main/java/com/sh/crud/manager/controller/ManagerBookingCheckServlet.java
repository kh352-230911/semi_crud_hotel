package com.sh.crud.manager.controller;

import com.sh.crud.booking.model.dao.BookingDao;
import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.service.BookingService;
import com.sh.crud.common.MvcUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/manager/bookingCheck")
public class ManagerBookingCheckServlet extends HttpServlet {
    private BookingService bookingService=new BookingService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = 1;
        int limit = 10;
        try {
            page = Integer.parseInt(req.getParameter("page"));
        } catch (NumberFormatException ignore) {}
        Map<String, Object> param = Map.of("page", page, "limit", limit);

        List<Booking> bookings=bookingService.findAll(param);
        req.setAttribute("bookings",bookings);

        int totalCount = bookingService.getTotalCount();
        String url = req.getRequestURI();
        String pagebar = MvcUtils.getPagebar(page, limit, totalCount, url);
        req.setAttribute("pagebar", pagebar);

//        System.out.println(bookings);
        req.getRequestDispatcher("/WEB-INF/views/manager/bookingCheck.jsp").forward(req,resp);
    }



}