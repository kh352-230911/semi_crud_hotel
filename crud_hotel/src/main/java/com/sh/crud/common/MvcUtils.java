package com.sh.crud.common;

public class MvcUtils {
    static String previous = """
        <li>
          <a href="%s" class="flex items-center justify-center px-3 h-8 ms-0 leading-tight text-gray-500 bg-white border border-e-0 border-gray-300 rounded-s-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
            <span class="sr-only">Previous</span>
            <svg class="w-2.5 h-2.5 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
              <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4"/>
            </svg>
          </a>
        </li>
        """;
    static String previousDisabled = """
        <li>
          <a href="#" class="flex items-center justify-center px-3 h-8 ms-0 leading-tight text-gray-500 bg-white border border-e-0 border-gray-300 rounded-s-lg cursor-not-allowed dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
            <span class="sr-only">Previous</span>
            <svg class="w-2.5 h-2.5 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
              <path stroke="currentColor" style="stroke:#9095a0ab" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4"/>
            </svg>
          </a>
        </li>
        """;
    static String currentPageNo = """
        <li>
          <a href="%s" aria-current="page" class="z-10 flex items-center justify-center px-3 h-8 leading-tight text-blue-600 border border-blue-300 bg-blue-50 hover:bg-blue-100 hover:text-blue-700 dark:border-gray-700 dark:bg-gray-700 dark:text-white">%d</a>
        </li>
        """;
    static String notCurrentPageNo = """
        <li>
          <a href="%s" class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">%d</a>
        </li>
        """;
    static String next = """
        <li>
          <a href="%s" class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 rounded-e-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
            <span class="sr-only">Next</span>
            <svg class="w-2.5 h-2.5 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
              <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/>
            </svg>
          </a>
        </li>
        """;
    static String nextDisabled = """
        <li>
          <a href="#" class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 rounded-e-lg cursor-not-allowed dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
            <span class="sr-only">Next</span>
            <svg class="w-2.5 h-2.5 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
              <path stroke="currentColor" style="stroke:#9095a0ab" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/>
            </svg>
          </a>
        </li>""";
    public static String getPagebar(int page, int limit, int totalCount, String url) {
        StringBuilder pagebar = new StringBuilder();
        url += (url.contains("?")) ? "&page=" : "?page=";

        int totalPage = (int) Math.ceil((double) totalCount / limit);
        int pagebarSize = 5;
        int pagebarStart = (page - 1) / pagebarSize * pagebarSize + 1;
        int pagebarEnd = pagebarStart + pagebarSize - 1;
        int pageNo = pagebarStart;

        if(pageNo == 1) {
            pagebar.append(previousDisabled);
        }
        else {
            pagebar.append(previous.formatted(url + (pageNo - 1)));
        }

        while(pageNo <= pagebarEnd && pageNo <= totalCount) {
            if(pageNo == page) {
                pagebar.append(currentPageNo.formatted(url + pageNo, pageNo));
            }
            else {
                pagebar.append(notCurrentPageNo.formatted(url + pageNo, pageNo));
            }
            pageNo++;
        }

        if(pageNo > totalPage) {
            pagebar.append(nextDisabled);
        }
        else {
            pagebar.append(next.formatted(url + pageNo));
        }
        return pagebar.toString();
    }

    public static String convertLineFeedToBr(String str) { return str.replaceAll("\n", "<br/>");}
    public static String escapeHtml(String str) { return str.replaceAll("<", "&lt;").replaceAll(">", "&gt;");}
}
