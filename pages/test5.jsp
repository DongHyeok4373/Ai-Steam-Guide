<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*, java.net.*, java.sql.*, javax.servlet.http.*, org.json.simple.JSONObject, org.json.simple.JSONArray, org.json.simple.parser.JSONParser, org.json.simple.parser.ParseException"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Steam Login Callback Test</title>
</head>

<body>

<%
    // 인위적으로 Steam에서 받은 응답 파라미터 설정
    String openidClaimedId = request.getParameter("openid.claimed_id");

    if (openidClaimedId == null) {
        // 테스트용으로 강제로 설정된 Steam ID
        openidClaimedId = "https://steamcommunity.com/openid/id/12345678901234567"; // 가상의 Steam ID
    }

    // 스팀 ID 추출
    String steamId = openidClaimedId.substring(openidClaimedId.lastIndexOf('/') + 1);

    try {
        // 테스트용 JSON 응답 문자열 정의
        String testApiResponse;
        
        // 경우 1: 정상적인 "response" 객체가 있는 JSON 응답
        boolean isResponsePresent = true; // 이 값을 false로 변경하면 "response"가 없는 테스트도 가능합니다

        if (isResponsePresent) {
            testApiResponse = "{"
                    + "\"response\": {"
                    + "\"players\": ["
                    + "{"
                    + "\"steamid\": \"" + steamId + "\","
                    + "\"personaname\": \"TestUser\","
                    + "\"avatar\": \"http://example.com/avatar.jpg\","
                    + "\"profileurl\": \"http://example.com/profile\""
                    + "}"
                    + "]"
                    + "}"
                    + "}";
        } else {
            // "response" 객체가 없는 경우를 테스트하기 위한 JSON 응답
            testApiResponse = "{ }";
        }

        // JSON 파싱
        JSONParser parser = new JSONParser();
        JSONObject jsonResponse = (JSONObject) parser.parse(testApiResponse);

        // "response" 객체 존재 여부 확인
        if (jsonResponse.containsKey("response")) {
            JSONObject response = (JSONObject) jsonResponse.get("response");
            JSONArray players = (JSONArray) response.get("players");

            if (players != null && !players.isEmpty()) {
                JSONObject player = (JSONObject) players.get(0);

                // 플레이어 정보 추출
                String nickname = (String) player.get("personaname");
                String avatarUrl = (String) player.get("avatar");
                String profileUrl = (String) player.get("profileurl");

                // 세션에 사용자 정보 저장
                session.setAttribute("user", nickname);
                session.setAttribute("steamId", steamId);

                // 메인 페이지로 리다이렉트
                response.sendRedirect("main.jsp");
            } else {
                out.println("<p>플레이어 정보를 가져올 수 없습니다.</p>");
            }
        } else {
            // "response" 객체가 없을 때
            out.println("<p>Steam 응답에 'response' 객체가 없습니다. 테스트 상황: response 없음</p>");
        }

    } catch (ParseException e) {
        out.println("<p>JSON 파싱 오류가 발생했습니다: " + e.getMessage() + "</p>");
        e.printStackTrace();
    } catch (Exception e) {
        out.println("<p>오류가 발생했습니다: " + e.getMessage() + "</p>");
        e.printStackTrace();
    }
%>

</body>

</html>
