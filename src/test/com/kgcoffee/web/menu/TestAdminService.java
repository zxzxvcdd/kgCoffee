package test.com.kgcoffee.web.menu;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.Test;

import com.kgcoffee.web.admin.DTO.ReportMapDTO;
import com.kgcoffee.web.admin.service.AdminService;

class TestAdminService {

	AdminService service = new AdminService();

//	@Test
//	void testOrderByAgeGroup() {
//
//		Map<String, String> keyMap = new HashMap<String, String>();
//
//		keyMap.put("rank", "100");
//		keyMap.put("dateType", "YYYY");
//		keyMap.put("dateValue", "2023");
//		keyMap.put("page", "1");
//
//		Map<String, Object> model = service.reportOrderByAgeGroup(keyMap);
//
//		List<String> keyNames = (ArrayList<String>) model.get("keyNames");
//
//		for (String key : keyNames) {
//
//			List<ReportMenuDTO> dtoList = (ArrayList<ReportMenuDTO>) model.get(key);
//
//			for (ReportMenuDTO dto : dtoList) {
//
//				System.out.println();
//				System.out.println("test");
//				System.out.println(dto);
//
//			}
//
//		}
//
//	}

//	@Test
//	void testOrderByMenu() {
//
//		Map<String, String> keyMap = new HashMap<String, String>();
//
//		keyMap.put("rank", "3");
//		keyMap.put("dateType", "YYYY");
//		keyMap.put("dateValue", "2023");
//
//		Map<String, Object> model = service.reportOrderByMenu(keyMap);
//
//		List<String> keyNames = (ArrayList<String>) model.get("keyNames");
//
//		for (String key : keyNames) {
//
//		
//			List<ReportMenuDTO> dtoList = (ArrayList<ReportMenuDTO>) model.get(key);
//
//			for (ReportMenuDTO dto : dtoList) {
//
//				System.out.println();
//				System.out.println("test");
//				System.out.println(dto);
//
//			}
//
//		}
//
//	}
	
	@Test
	void testOrderByMap() {
		

		
		Map<String, String> keyMap = new HashMap<String, String>();
		
		
		keyMap.put("rank","100");
		keyMap.put("dateType","YYYY");
		keyMap.put("dateValue", "2023");
		keyMap.put("page", "1");
		
		
		Map<String, Object> model = service.reportOrderByMap(keyMap);


		

		List<String> keyNames = (ArrayList<String>) model.get("keyNames");

		for (String key : keyNames) {

		
			List<ReportMapDTO> dtoList = (ArrayList<ReportMapDTO>) model.get(key);

			for (ReportMapDTO dto : dtoList) {

				System.out.println();
				System.out.println("test");
				System.out.println(dto);

			}

		}
		
		
		
	}

}