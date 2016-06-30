package it.corsoangular.esercitazione.dao;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.jdbc.SqlConfig;
import org.springframework.test.context.jdbc.SqlGroup;
import org.springframework.test.context.jdbc.Sql.ExecutionPhase;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import it.corsoangular.esercitazione.dao.interfacce.IBibliotecaDao;
import it.corsoangular.esercitazione.domain.Libro;

/**
 * Test eseguiti sul DAO:
 * 
 * <table>
 * <header>
 * <td><b>Codice Test</td>
 * <td><b>Descrizione Test</td>
 * <td><b>Risultato Atteso</td></header>
 * <tr>
 * <td>1</td>
 * <td>Ricerca di un libro <b>inesistente</b> attraverso il solo autore passando
 * la variabile titolo a null</td>
 * <td>Non viene trovato alcun risultato</td>
 * </tr>
 * <tr>
 * <td>2</td>
 * <td>Ricerca di un libro <b>inesistente</b> attraverso il solo autore passando
 * la variabile titolo a blank</td>
 * <td>Non viene trovato alcun risultato</td>
 * </tr>
 * <tr>
 * <td>3</td>
 * <td>Ricerca di un libro <b>inesistente</b> attraverso il solo autore passando
 * la variabile titolo a spazi</td>
 * <td>Non viene trovato alcun risultato</td>
 * </tr>
 * <tr>
 * <td>4</td>
 * <td>Ricerca di un libro <b>esistente</b> attraverso il solo autore</td>
 * <td>Viene trovato un risultato in quanto la ricerca e' eseguita solo per
 * autore</td>
 * </tr>
 * <tr>
 * <td>5</td>
 * <td>Ricerca di un libro <b>inesistente</b> attraverso il solo titolo passando
 * la variabile autore a null</td>
 * <td>Non viene trovato alcun risultato</td>
 * </tr>
 * <tr>
 * <td>6</td>
 * <td>Ricerca di un libro <b>inesistente</b> attraverso il solo titolo passando
 * la variabile autore a blank</td>
 * <td>Non viene trovato alcun risultato</td>
 * </tr>
 * <tr>
 * <td>7</td>
 * <td>Ricerca di un libro <b>inesistente</b> attraverso il solo titolo passando
 * la variabile autore a spazi</td>
 * <td>Non viene trovato alcun risultato</td>
 * </tr>
 * <tr>
 * <td>8</td>
 * <td>Ricerca di un libro <b>esistente</b> attraverso il solo titolo</td>
 * <td>Viene trovato un risultato in quanto la ricerca e' eseguita solo per
 * titolo</td>
 * </tr>
 * <tr>
 * <td>9</td>
 * <td>Ricerca di un libro passando entrambe le variabili a null</td>
 * <td>Vengono restituiti tutti i risultati presenti in tabella</td>
 * </tr>
 * <tr>
 * <td>10</td>
 * <td>Ricerca di un libro passando l'autore a blank e il titolo a null</td>
 * <td>Vengono restituiti tutti i risultati presenti in tabella</td>
 * </tr>
 * <tr>
 * <td>11</td>
 * <td>Ricerca di un libro passando l'autore a spazi e il titolo a null</td>
 * <td>Vengono restituiti tutti i risultati presenti in tabella</td>
 * </tr>
 * <tr>
 * <td>12</td>
 * <td>Ricerca di un libro passando l'autore a null e il titolo a blank</td>
 * <td>Vengono restituiti tutti i risultati presenti in tabella</td>
 * </tr>
 * <tr>
 * <td>13</td>
 * <td>Ricerca di un libro passando l'autore a null e il titolo a spazi</td>
 * <td>Vengono restituiti tutti i risultati presenti in tabella</td>
 * </tr>
 * <tr>
 * <td>14</td>
 * <td>Ricerca di un libro passando l'autore esistente e il titolo inesistente
 * </td>
 * <td>Non viene restituito alcun risultato</td>
 * </tr>
 * <tr>
 * <td>15</td>
 * <td>Ricerca di un libro passando l'autore inesistente e il titolo esistente
 * </td>
 * <td>Non viene restituito alcun risultato</td>
 * </tr>
 * <tr>
 * <td>16</td>
 * <td>Ricerca di un libro passando autore e titolo entrambi inesistenti</td>
 * <td>Non viene restituito alcun risultato</td>
 * </tr>
 * <tr>
 * <td>16</td>
 * <td>Ricerca di un libro passando autore e titolo entrambi esistenti</td>
 * <td>Viene restituito un risultato</td>
 * </tr>
 * </table>
 * 
 */

@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/config/web-application-config.xml" })
@RunWith(SpringJUnit4ClassRunner.class)
public class BibliotecaDaoTest {

	@Autowired
	private IBibliotecaDao bibliotecaDao;

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test1() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("AUTORE_INESISTENTE", null);

		Assert.assertEquals(0, risultati.size());
	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test2() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("AUTORE_INESISTENTE", "");

		Assert.assertEquals(0, risultati.size());
	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test3() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("AUTORE_INESISTENTE", "       ");

		Assert.assertEquals(0, risultati.size());
	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test4() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("Dante Alighieri", null);

		Assert.assertEquals(1, risultati.size());
		Assert.assertEquals("La divina commedia", risultati.get(0).getTitolo());
		Assert.assertEquals("Dante Alighieri", risultati.get(0).getAutore());
		Assert.assertEquals("01011300", risultati.get(0).getDataPubblicazione());
		Assert.assertEquals(1, risultati.get(0).getIdentificativo().intValue());

	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test5() {
		List<Libro> risultati = bibliotecaDao.cercaLibro(null, "TITOLO_INESISTENTE");

		Assert.assertEquals(0, risultati.size());
	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test6() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("", "TITOLO_INESISTENTE");

		Assert.assertEquals(0, risultati.size());
	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test7() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("   ", "TITOLO_INESISTENTE");

		Assert.assertEquals(0, risultati.size());
	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test8() {
		List<Libro> risultati = bibliotecaDao.cercaLibro(null, "La divina commedia");

		Assert.assertEquals(1, risultati.size());
		Assert.assertEquals("La divina commedia", risultati.get(0).getTitolo());
		Assert.assertEquals("Dante Alighieri", risultati.get(0).getAutore());
		Assert.assertEquals("01011300", risultati.get(0).getDataPubblicazione());
		Assert.assertEquals(1, risultati.get(0).getIdentificativo().intValue());

	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test9() {
		List<Libro> risultati = bibliotecaDao.cercaLibro(null, null);

		Assert.assertEquals(2, risultati.size());

		Assert.assertEquals("La divina commedia", risultati.get(0).getTitolo());
		Assert.assertEquals("Dante Alighieri", risultati.get(0).getAutore());
		Assert.assertEquals("01011300", risultati.get(0).getDataPubblicazione());
		Assert.assertEquals(1, risultati.get(0).getIdentificativo().intValue());

		Assert.assertEquals("I Promessi Sposi", risultati.get(1).getTitolo());
		Assert.assertEquals("Alessandro Manzoni", risultati.get(1).getAutore());
		Assert.assertEquals("01011827", risultati.get(1).getDataPubblicazione());
		Assert.assertEquals(2, risultati.get(1).getIdentificativo().intValue());
	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test10() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("", null);

		Assert.assertEquals(2, risultati.size());

		Assert.assertEquals("La divina commedia", risultati.get(0).getTitolo());
		Assert.assertEquals("Dante Alighieri", risultati.get(0).getAutore());
		Assert.assertEquals("01011300", risultati.get(0).getDataPubblicazione());
		Assert.assertEquals(1, risultati.get(0).getIdentificativo().intValue());

		Assert.assertEquals("I Promessi Sposi", risultati.get(1).getTitolo());
		Assert.assertEquals("Alessandro Manzoni", risultati.get(1).getAutore());
		Assert.assertEquals("01011827", risultati.get(1).getDataPubblicazione());
		Assert.assertEquals(2, risultati.get(1).getIdentificativo().intValue());
	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test11() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("     ", null);

		Assert.assertEquals(2, risultati.size());

		Assert.assertEquals("La divina commedia", risultati.get(0).getTitolo());
		Assert.assertEquals("Dante Alighieri", risultati.get(0).getAutore());
		Assert.assertEquals("01011300", risultati.get(0).getDataPubblicazione());
		Assert.assertEquals(1, risultati.get(0).getIdentificativo().intValue());

		Assert.assertEquals("I Promessi Sposi", risultati.get(1).getTitolo());
		Assert.assertEquals("Alessandro Manzoni", risultati.get(1).getAutore());
		Assert.assertEquals("01011827", risultati.get(1).getDataPubblicazione());
		Assert.assertEquals(2, risultati.get(1).getIdentificativo().intValue());
	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test12() {
		List<Libro> risultati = bibliotecaDao.cercaLibro(null, "");

		Assert.assertEquals(2, risultati.size());

		Assert.assertEquals("La divina commedia", risultati.get(0).getTitolo());
		Assert.assertEquals("Dante Alighieri", risultati.get(0).getAutore());
		Assert.assertEquals("01011300", risultati.get(0).getDataPubblicazione());
		Assert.assertEquals(1, risultati.get(0).getIdentificativo().intValue());

		Assert.assertEquals("I Promessi Sposi", risultati.get(1).getTitolo());
		Assert.assertEquals("Alessandro Manzoni", risultati.get(1).getAutore());
		Assert.assertEquals("01011827", risultati.get(1).getDataPubblicazione());
		Assert.assertEquals(2, risultati.get(1).getIdentificativo().intValue());
	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test13() {
		List<Libro> risultati = bibliotecaDao.cercaLibro(null, "    ");

		Assert.assertEquals(2, risultati.size());

		Assert.assertEquals("La divina commedia", risultati.get(0).getTitolo());
		Assert.assertEquals("Dante Alighieri", risultati.get(0).getAutore());
		Assert.assertEquals("01011300", risultati.get(0).getDataPubblicazione());
		Assert.assertEquals(1, risultati.get(0).getIdentificativo().intValue());

		Assert.assertEquals("I Promessi Sposi", risultati.get(1).getTitolo());
		Assert.assertEquals("Alessandro Manzoni", risultati.get(1).getAutore());
		Assert.assertEquals("01011827", risultati.get(1).getDataPubblicazione());
		Assert.assertEquals(2, risultati.get(1).getIdentificativo().intValue());
	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test14() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("Dante Alighieri", "TITOLO_INESISTENTE");

		Assert.assertEquals(0, risultati.size());

	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test15() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("AUTORE_INESISTENTE", "La divina commedia");

		Assert.assertEquals(0, risultati.size());

	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test16() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("AUTORE_INESISTENTE", "TITOLO_INESISTENTE");

		Assert.assertEquals(0, risultati.size());

	}

	@Test
	@SqlGroup({
			@Sql(scripts = "classpath:insert-records-prova.sql", executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")),
			@Sql(scripts = "classpath:clear-records-prova.sql", executionPhase = ExecutionPhase.AFTER_TEST_METHOD, config = @SqlConfig(transactionManager = "transactionManager", dataSource = "dataSource")) })
	public void test17() {
		List<Libro> risultati = bibliotecaDao.cercaLibro("Dante Alighieri", "La divina commedia");

		Assert.assertEquals(1, risultati.size());
		Assert.assertEquals("La divina commedia", risultati.get(0).getTitolo());
		Assert.assertEquals("Dante Alighieri", risultati.get(0).getAutore());
		Assert.assertEquals("01011300", risultati.get(0).getDataPubblicazione());
		Assert.assertEquals(1, risultati.get(0).getIdentificativo().intValue());

	}
}
