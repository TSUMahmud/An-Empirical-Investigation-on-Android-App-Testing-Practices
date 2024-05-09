/*  EP Mobile -- Mobile tools for electrophysiologists
    Copyright (C) 2011 EP Studios, Inc.
    www.epstudiossoftware.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import org.junit.Test;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertFalse;
import org.epstudios.epmobile.QtcCalculator;
import org.epstudios.epmobile.QtcCalculator.QtcFormula;

public class QtcCalculatorTest {

	@Test
	public void testCalculate() {
		assertEquals(0, QtcCalculator.calculate(0, 0, QtcFormula.BAZETT));
		assertEquals(400, QtcCalculator.calculate(1000, 400, QtcFormula.BAZETT));
		assertEquals(460, QtcCalculator.calculate(863, 427, QtcFormula.BAZETT));
	}
	@Test
	public void testCalculateFridericia() {
		assertEquals(0, QtcCalculator.calculate(0, 0, QtcFormula.FRIDERICIA));
		assertEquals(400, QtcCalculator.calculate(1000, 400, QtcFormula.FRIDERICIA));
		assertEquals(448, QtcCalculator.calculate(863, 427, QtcFormula.FRIDERICIA));
	}
	@Test
	public void testCalculateSagie() {
		assertEquals(154, QtcCalculator.calculate(0, 0, QtcFormula.SAGIE));
		assertEquals(400, QtcCalculator.calculate(1000, 400, QtcFormula.SAGIE));
		assertEquals(448, QtcCalculator.calculate(863, 427, QtcFormula.SAGIE));
	}
	@Test
	public void testCalculateHodges() {
		assertEquals(0, QtcCalculator.calculate(0, 0, QtcFormula.HODGES));
		assertEquals(400, QtcCalculator.calculate(1000, 400, QtcFormula.HODGES));
		assertEquals(444, QtcCalculator.calculate(863, 427, QtcFormula.HODGES));
	}
	@Test
	public void testRounding() {
		// make sure rounding works the way we want it
		assertTrue(Math.round(0.5) == 1);
		assertTrue(Math.round(0.4) == 0);
		assertTrue(Math.round(0.6) == 1);
	}
@Test
	public void testJT() {
		assertEquals(QtcCalculator.jtInterval(398, 99), 299);
		assertEquals(QtcCalculator.jtInterval(400, 201), 199);
	}
@Test
	public void testJTc() {
		int jtc = QtcCalculator.jtCorrected(360, 550, 135);
		int qtc = QtcCalculator.calculate(550, 360, QtcFormula.BAZETT);
		assertTrue(jtc == qtc - 135);
	}
@Test
	public void testQTcLBBB() {
		long result = QtcCalculator.qtCorrectedForLBBB(360, 144);
		assertTrue(result == 290);
		result = QtcCalculator.qtCorrectedForLBBB(444, 197);
		assertTrue(result == 348);
		result = QtcCalculator.qtCorrectedForLBBB(400, 0);
		assertTrue(result == 400);
	}
@Test
	public void testQTcBBBSex() {
		long result = QtcCalculator.qtRrIvcd(379, 77, 155, true);
		assertTrue(result == 376);
		result = QtcCalculator.qtRrIvcd(442, 55, 110, false);
		assertTrue(result == 421);
	}
@Test
	public void testTruncation() {
		long result = QtcCalculator.calculate(888, 400, QtcFormula.BAZETT);
		assertTrue(result == 424);
	}
@Test
	public void testPreQtcLbbb() {
		long result = QtcCalculator.preLbbbQtc(	333, 789, 166, true);
		assertEquals(304, result);
		result = QtcCalculator.preLbbbQtc(	333, 789, 166, false);
		assertEquals(297, result);
	}


}
