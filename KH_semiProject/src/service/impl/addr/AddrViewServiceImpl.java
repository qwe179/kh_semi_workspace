package service.impl.addr;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import common.Paging;
import dao.face.addr.AddrViewDao;
import dao.impl.addr.AddrViewDaoImpl;
import dto.addr.AddrParam;
import dto.addr.AddrView;
import service.face.addr.AddrViewService;

public class AddrViewServiceImpl implements AddrViewService{
	
	AddrViewDao addrViewDao = new AddrViewDaoImpl();

	@Override
	public List<AddrView> viewUserAddr(AddrParam addrParam,Paging paging) {
		
		List<AddrView> result = new ArrayList<>();
		
		Connection conn = JDBCTemplate.getConnection();
		result = addrViewDao.viewUserAddr(conn, addrParam, paging);
		
		return result;
		
	}

	
	
	
	
	@Override
	public Paging getPaging(HttpServletRequest req) {

		Paging result = null;
		
		String param = req.getParameter("curPage");
		int curPage = 0;
		if(param!=null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		Connection conn = JDBCTemplate.getConnection();
		int totalCount = addrViewDao.selectCntAll(conn);
		
		int listCount = 15; //페이지당 볼 수 있는 최대 User 수
		
		result = new Paging(totalCount, curPage, listCount);
		
		return result;
		
	}

	
	
}
