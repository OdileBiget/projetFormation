package servlets;

//import java.io.BufferedInputStream;
//import java.io.BufferedOutputStream;
//import java.io.File;
//import java.io.FileOutputStream;
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.photoJardin;
import services.ImageImpl;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



/**
 * Servlet implementation class ImageDeMerde
 */
//@WebServlet(urlPatterns = {"/ImageDeMerde"})

public class ImageDeMerde extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String descriptionFile;
	String path;
	private String UPLOAD_DIRECTORY;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ImageDeMerde() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		UPLOAD_DIRECTORY = getServletContext().getRealPath("/").replace("build\\", "") + "src" + File.separator
				+ "main" + File.separator + "webapp" + File.separator + "fileDownload";
		// process only if its multipart content
		
		if (ServletFileUpload.isMultipartContent(request)) {
			
			try {
				
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

				String name = null;

				for (FileItem item : multiparts) {

					if (!item.isFormField()) {

						name = new File(item.getName()).getName();

						item.write(new File(UPLOAD_DIRECTORY + File.separator + name));

						path = UPLOAD_DIRECTORY + File.separator + name;
						
					} else {

						InputStream input = item.getInputStream();

						if (item.getFieldName().equals("Nom")) {

							byte[] str = new byte[input.available()];

							input.read(str);

							descriptionFile = new String(str, "UTF8");

						}

					}
				}

				ImageImpl img = new ImageImpl();

				img.create(new photoJardin(name, name));

				request.setAttribute("message", "File Uploaded Successfully le nom est :" + descriptionFile);
				
			} catch (Exception ex) {
				
				request.setAttribute("message", "File Upload Failed due to " + ex);
				
			}
			
		} else {
			
			request.setAttribute("message", "Sorry this Servlet only handles file upload request");
		}

		request.getRequestDispatcher("/JspUploadImage.jsp").forward(request, response);

	}

}
