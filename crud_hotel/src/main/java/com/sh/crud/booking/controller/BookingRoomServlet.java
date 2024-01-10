package com.sh.crud.booking.controller;

import com.google.gson.Gson;
import com.sh.crud.booking.model.service.BookingService;
import com.sh.crud.booking.model.vo.BookingVo;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.room.model.entity.Room;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;
import java.time.LocalDate;

@WebServlet("/booking/bookingRoom")
public class BookingRoomServlet extends HttpServlet {

    private BookingService bookingService = new BookingService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 1. 인코딩처리
        req.setCharacterEncoding("utf-8");

        // 2. 사용자 입력값 가져오기
        String roomType = req.getParameter("roomType");
        LocalDate checkInDate = LocalDate.parse(req.getParameter("checkInDate"));
        LocalDate checkOutDate = LocalDate.parse(req.getParameter("checkOutDate"));
        int roomPeople = Integer.parseInt(req.getParameter("roomPeople"));
        System.out.println(roomType);
        System.out.println(checkInDate);
        System.out.println(checkOutDate);
        System.out.println(roomPeople);
        HttpSession session = req.getSession();

        session.setAttribute("checkInDate", checkInDate);
        session.setAttribute("checkOutDate", checkOutDate);
        session.setAttribute("roomPeople", roomPeople);

        // Store the dates in the session
        Map<String, Object> param = new HashMap<>();
        param.put("roomType", roomType);
        param.put("checkInDate", checkInDate);
        param.put("checkOutDate", checkOutDate);
        param.put("roomPeople", roomPeople);
        System.out.println(param);

        // 3. 업무로직
        List<BookingVo> bookingList = bookingService.findBookingAll(param);
        List<String> filteredRoomNumbers = new ArrayList<>();

        System.out.println(bookingList);
        req.setAttribute("booking", bookingList);

        // 예를 들어, 특정 roomType에 해당하는 모든 방의 번호를 출력하고자 할 때
        for (BookingVo bookingVo : bookingList) {
            // BookingVo 객체에서 Room 목록을 가져옴
            List<Room> rooms = bookingVo.getRooms();
            // 해당 Room 목록에서 각 Room 객체를 순회
            for (Room room : rooms) {
            // 특정 roomType에 해당하는 방만 처리
                if (roomType.equals(room.getRoomType())) {
                    // roomType이 일치하는 Room 객체의 roomNum을 출력
                    System.out.println(room);
                    filteredRoomNumbers.add(room.getRoomNum());
                }
            }
        }

        req.setAttribute("filtered",filteredRoomNumbers);

//        resp.setContentType("application/json; charset=utf-8");
//        new Gson().toJson(booking, resp.getWriter());

        // 세션에서 로그인 정보를 가져옵니다.
        Member loginMember = (Member) req.getSession().getAttribute("loginMember");

        // 로그인 정보가 null이라면 로그인하지 않은 상태입니다.
        if (loginMember == null) {
            // 로그인 페이지로 리다이렉트합니다.
            req.getSession().setAttribute("msg", "로그인을 먼저 해주세요😅");
            resp.sendRedirect(req.getContextPath() + "/member/memberLogin");
        } else {
            // 로그인 상태라면 예약 선택 페이지로 포워드합니다.
            req.getRequestDispatcher("/WEB-INF/views/booking/bookingRoom.jsp").forward(req, resp);
        }
    }
}