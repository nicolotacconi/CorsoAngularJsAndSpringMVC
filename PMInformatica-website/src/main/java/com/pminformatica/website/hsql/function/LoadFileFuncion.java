package com.pminformatica.website.hsql.function;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Blob;
import java.sql.SQLException;

import javax.sql.rowset.serial.SerialException;

import org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader;
import org.springframework.core.io.ClassPathResource;

public final class LoadFileFuncion {

	private LoadFileFuncion() {

	}

	public static Blob loadFile(String path) throws IOException,
			URISyntaxException, SerialException, SQLException {
		FileInputStream fileInputStream = null;

		File file = new ClassPathResource(path).getFile();

		byte[] bFile = new byte[(int) file.length()];

		// convert file into array of bytes
		fileInputStream = new FileInputStream(file);
		fileInputStream.read(bFile);
		fileInputStream.close();
		Blob blob = new javax.sql.rowset.serial.SerialBlob(bFile);
		return blob;
	}
}
