//
//  binaryToSwelledBinary.swift
//  SwiftUI Demo 2
//
//  Created by Wonil Lee on 2023/05/07.
//

import Foundation

func binaryToSwelledBinary(_ input: [[Int]]) -> [[Int]] {
	
	// 선의 점에 해당하는 픽셀, 즉, 값이 0인 픽셀을 반지름이 20 픽셀인 원 크기로 부풀어오르게 하다.
	// 기준 반지름인 20을 바꾸려면 좌표의 어레이로 저장된 pixelCircle20, pixelRightCrescent20 등을 다른 반지름 기준으로 새로 계산해서 아래처럼 함수 안에 상수로 추가해주어야 한다.
	
	let pixelCircle20: [(Int, Int)] = [(-20, 0), (-19, -6), (-19, -5), (-19, -4), (-19, -3), (-19, -2), (-19, -1), (-19, 0), (-19, 1), (-19, 2), (-19, 3), (-19, 4), (-19, 5), (-19, 6), (-18, -8), (-18, -7), (-18, -6), (-18, -5), (-18, -4), (-18, -3), (-18, -2), (-18, -1), (-18, 0), (-18, 1), (-18, 2), (-18, 3), (-18, 4), (-18, 5), (-18, 6), (-18, 7), (-18, 8), (-17, -10), (-17, -9), (-17, -8), (-17, -7), (-17, -6), (-17, -5), (-17, -4), (-17, -3), (-17, -2), (-17, -1), (-17, 0), (-17, 1), (-17, 2), (-17, 3), (-17, 4), (-17, 5), (-17, 6), (-17, 7), (-17, 8), (-17, 9), (-17, 10), (-16, -12), (-16, -11), (-16, -10), (-16, -9), (-16, -8), (-16, -7), (-16, -6), (-16, -5), (-16, -4), (-16, -3), (-16, -2), (-16, -1), (-16, 0), (-16, 1), (-16, 2), (-16, 3), (-16, 4), (-16, 5), (-16, 6), (-16, 7), (-16, 8), (-16, 9), (-16, 10), (-16, 11), (-16, 12), (-15, -13), (-15, -12), (-15, -11), (-15, -10), (-15, -9), (-15, -8), (-15, -7), (-15, -6), (-15, -5), (-15, -4), (-15, -3), (-15, -2), (-15, -1), (-15, 0), (-15, 1), (-15, 2), (-15, 3), (-15, 4), (-15, 5), (-15, 6), (-15, 7), (-15, 8), (-15, 9), (-15, 10), (-15, 11), (-15, 12), (-15, 13), (-14, -14), (-14, -13), (-14, -12), (-14, -11), (-14, -10), (-14, -9), (-14, -8), (-14, -7), (-14, -6), (-14, -5), (-14, -4), (-14, -3), (-14, -2), (-14, -1), (-14, 0), (-14, 1), (-14, 2), (-14, 3), (-14, 4), (-14, 5), (-14, 6), (-14, 7), (-14, 8), (-14, 9), (-14, 10), (-14, 11), (-14, 12), (-14, 13), (-14, 14), (-13, -15), (-13, -14), (-13, -13), (-13, -12), (-13, -11), (-13, -10), (-13, -9), (-13, -8), (-13, -7), (-13, -6), (-13, -5), (-13, -4), (-13, -3), (-13, -2), (-13, -1), (-13, 0), (-13, 1), (-13, 2), (-13, 3), (-13, 4), (-13, 5), (-13, 6), (-13, 7), (-13, 8), (-13, 9), (-13, 10), (-13, 11), (-13, 12), (-13, 13), (-13, 14), (-13, 15), (-12, -16), (-12, -15), (-12, -14), (-12, -13), (-12, -12), (-12, -11), (-12, -10), (-12, -9), (-12, -8), (-12, -7), (-12, -6), (-12, -5), (-12, -4), (-12, -3), (-12, -2), (-12, -1), (-12, 0), (-12, 1), (-12, 2), (-12, 3), (-12, 4), (-12, 5), (-12, 6), (-12, 7), (-12, 8), (-12, 9), (-12, 10), (-12, 11), (-12, 12), (-12, 13), (-12, 14), (-12, 15), (-12, 16), (-11, -16), (-11, -15), (-11, -14), (-11, -13), (-11, -12), (-11, -11), (-11, -10), (-11, -9), (-11, -8), (-11, -7), (-11, -6), (-11, -5), (-11, -4), (-11, -3), (-11, -2), (-11, -1), (-11, 0), (-11, 1), (-11, 2), (-11, 3), (-11, 4), (-11, 5), (-11, 6), (-11, 7), (-11, 8), (-11, 9), (-11, 10), (-11, 11), (-11, 12), (-11, 13), (-11, 14), (-11, 15), (-11, 16), (-10, -17), (-10, -16), (-10, -15), (-10, -14), (-10, -13), (-10, -12), (-10, -11), (-10, -10), (-10, -9), (-10, -8), (-10, -7), (-10, -6), (-10, -5), (-10, -4), (-10, -3), (-10, -2), (-10, -1), (-10, 0), (-10, 1), (-10, 2), (-10, 3), (-10, 4), (-10, 5), (-10, 6), (-10, 7), (-10, 8), (-10, 9), (-10, 10), (-10, 11), (-10, 12), (-10, 13), (-10, 14), (-10, 15), (-10, 16), (-10, 17), (-9, -17), (-9, -16), (-9, -15), (-9, -14), (-9, -13), (-9, -12), (-9, -11), (-9, -10), (-9, -9), (-9, -8), (-9, -7), (-9, -6), (-9, -5), (-9, -4), (-9, -3), (-9, -2), (-9, -1), (-9, 0), (-9, 1), (-9, 2), (-9, 3), (-9, 4), (-9, 5), (-9, 6), (-9, 7), (-9, 8), (-9, 9), (-9, 10), (-9, 11), (-9, 12), (-9, 13), (-9, 14), (-9, 15), (-9, 16), (-9, 17), (-8, -18), (-8, -17), (-8, -16), (-8, -15), (-8, -14), (-8, -13), (-8, -12), (-8, -11), (-8, -10), (-8, -9), (-8, -8), (-8, -7), (-8, -6), (-8, -5), (-8, -4), (-8, -3), (-8, -2), (-8, -1), (-8, 0), (-8, 1), (-8, 2), (-8, 3), (-8, 4), (-8, 5), (-8, 6), (-8, 7), (-8, 8), (-8, 9), (-8, 10), (-8, 11), (-8, 12), (-8, 13), (-8, 14), (-8, 15), (-8, 16), (-8, 17), (-8, 18), (-7, -18), (-7, -17), (-7, -16), (-7, -15), (-7, -14), (-7, -13), (-7, -12), (-7, -11), (-7, -10), (-7, -9), (-7, -8), (-7, -7), (-7, -6), (-7, -5), (-7, -4), (-7, -3), (-7, -2), (-7, -1), (-7, 0), (-7, 1), (-7, 2), (-7, 3), (-7, 4), (-7, 5), (-7, 6), (-7, 7), (-7, 8), (-7, 9), (-7, 10), (-7, 11), (-7, 12), (-7, 13), (-7, 14), (-7, 15), (-7, 16), (-7, 17), (-7, 18), (-6, -19), (-6, -18), (-6, -17), (-6, -16), (-6, -15), (-6, -14), (-6, -13), (-6, -12), (-6, -11), (-6, -10), (-6, -9), (-6, -8), (-6, -7), (-6, -6), (-6, -5), (-6, -4), (-6, -3), (-6, -2), (-6, -1), (-6, 0), (-6, 1), (-6, 2), (-6, 3), (-6, 4), (-6, 5), (-6, 6), (-6, 7), (-6, 8), (-6, 9), (-6, 10), (-6, 11), (-6, 12), (-6, 13), (-6, 14), (-6, 15), (-6, 16), (-6, 17), (-6, 18), (-6, 19), (-5, -19), (-5, -18), (-5, -17), (-5, -16), (-5, -15), (-5, -14), (-5, -13), (-5, -12), (-5, -11), (-5, -10), (-5, -9), (-5, -8), (-5, -7), (-5, -6), (-5, -5), (-5, -4), (-5, -3), (-5, -2), (-5, -1), (-5, 0), (-5, 1), (-5, 2), (-5, 3), (-5, 4), (-5, 5), (-5, 6), (-5, 7), (-5, 8), (-5, 9), (-5, 10), (-5, 11), (-5, 12), (-5, 13), (-5, 14), (-5, 15), (-5, 16), (-5, 17), (-5, 18), (-5, 19), (-4, -19), (-4, -18), (-4, -17), (-4, -16), (-4, -15), (-4, -14), (-4, -13), (-4, -12), (-4, -11), (-4, -10), (-4, -9), (-4, -8), (-4, -7), (-4, -6), (-4, -5), (-4, -4), (-4, -3), (-4, -2), (-4, -1), (-4, 0), (-4, 1), (-4, 2), (-4, 3), (-4, 4), (-4, 5), (-4, 6), (-4, 7), (-4, 8), (-4, 9), (-4, 10), (-4, 11), (-4, 12), (-4, 13), (-4, 14), (-4, 15), (-4, 16), (-4, 17), (-4, 18), (-4, 19), (-3, -19), (-3, -18), (-3, -17), (-3, -16), (-3, -15), (-3, -14), (-3, -13), (-3, -12), (-3, -11), (-3, -10), (-3, -9), (-3, -8), (-3, -7), (-3, -6), (-3, -5), (-3, -4), (-3, -3), (-3, -2), (-3, -1), (-3, 0), (-3, 1), (-3, 2), (-3, 3), (-3, 4), (-3, 5), (-3, 6), (-3, 7), (-3, 8), (-3, 9), (-3, 10), (-3, 11), (-3, 12), (-3, 13), (-3, 14), (-3, 15), (-3, 16), (-3, 17), (-3, 18), (-3, 19), (-2, -19), (-2, -18), (-2, -17), (-2, -16), (-2, -15), (-2, -14), (-2, -13), (-2, -12), (-2, -11), (-2, -10), (-2, -9), (-2, -8), (-2, -7), (-2, -6), (-2, -5), (-2, -4), (-2, -3), (-2, -2), (-2, -1), (-2, 0), (-2, 1), (-2, 2), (-2, 3), (-2, 4), (-2, 5), (-2, 6), (-2, 7), (-2, 8), (-2, 9), (-2, 10), (-2, 11), (-2, 12), (-2, 13), (-2, 14), (-2, 15), (-2, 16), (-2, 17), (-2, 18), (-2, 19), (-1, -19), (-1, -18), (-1, -17), (-1, -16), (-1, -15), (-1, -14), (-1, -13), (-1, -12), (-1, -11), (-1, -10), (-1, -9), (-1, -8), (-1, -7), (-1, -6), (-1, -5), (-1, -4), (-1, -3), (-1, -2), (-1, -1), (-1, 0), (-1, 1), (-1, 2), (-1, 3), (-1, 4), (-1, 5), (-1, 6), (-1, 7), (-1, 8), (-1, 9), (-1, 10), (-1, 11), (-1, 12), (-1, 13), (-1, 14), (-1, 15), (-1, 16), (-1, 17), (-1, 18), (-1, 19), (0, -20), (0, -19), (0, -18), (0, -17), (0, -16), (0, -15), (0, -14), (0, -13), (0, -12), (0, -11), (0, -10), (0, -9), (0, -8), (0, -7), (0, -6), (0, -5), (0, -4), (0, -3), (0, -2), (0, -1), (0, 0), (0, 1), (0, 2), (0, 3), (0, 4), (0, 5), (0, 6), (0, 7), (0, 8), (0, 9), (0, 10), (0, 11), (0, 12), (0, 13), (0, 14), (0, 15), (0, 16), (0, 17), (0, 18), (0, 19), (0, 20), (1, -19), (1, -18), (1, -17), (1, -16), (1, -15), (1, -14), (1, -13), (1, -12), (1, -11), (1, -10), (1, -9), (1, -8), (1, -7), (1, -6), (1, -5), (1, -4), (1, -3), (1, -2), (1, -1), (1, 0), (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12), (1, 13), (1, 14), (1, 15), (1, 16), (1, 17), (1, 18), (1, 19), (2, -19), (2, -18), (2, -17), (2, -16), (2, -15), (2, -14), (2, -13), (2, -12), (2, -11), (2, -10), (2, -9), (2, -8), (2, -7), (2, -6), (2, -5), (2, -4), (2, -3), (2, -2), (2, -1), (2, 0), (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10), (2, 11), (2, 12), (2, 13), (2, 14), (2, 15), (2, 16), (2, 17), (2, 18), (2, 19), (3, -19), (3, -18), (3, -17), (3, -16), (3, -15), (3, -14), (3, -13), (3, -12), (3, -11), (3, -10), (3, -9), (3, -8), (3, -7), (3, -6), (3, -5), (3, -4), (3, -3), (3, -2), (3, -1), (3, 0), (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8), (3, 9), (3, 10), (3, 11), (3, 12), (3, 13), (3, 14), (3, 15), (3, 16), (3, 17), (3, 18), (3, 19), (4, -19), (4, -18), (4, -17), (4, -16), (4, -15), (4, -14), (4, -13), (4, -12), (4, -11), (4, -10), (4, -9), (4, -8), (4, -7), (4, -6), (4, -5), (4, -4), (4, -3), (4, -2), (4, -1), (4, 0), (4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8), (4, 9), (4, 10), (4, 11), (4, 12), (4, 13), (4, 14), (4, 15), (4, 16), (4, 17), (4, 18), (4, 19), (5, -19), (5, -18), (5, -17), (5, -16), (5, -15), (5, -14), (5, -13), (5, -12), (5, -11), (5, -10), (5, -9), (5, -8), (5, -7), (5, -6), (5, -5), (5, -4), (5, -3), (5, -2), (5, -1), (5, 0), (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (5, 7), (5, 8), (5, 9), (5, 10), (5, 11), (5, 12), (5, 13), (5, 14), (5, 15), (5, 16), (5, 17), (5, 18), (5, 19), (6, -19), (6, -18), (6, -17), (6, -16), (6, -15), (6, -14), (6, -13), (6, -12), (6, -11), (6, -10), (6, -9), (6, -8), (6, -7), (6, -6), (6, -5), (6, -4), (6, -3), (6, -2), (6, -1), (6, 0), (6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6), (6, 7), (6, 8), (6, 9), (6, 10), (6, 11), (6, 12), (6, 13), (6, 14), (6, 15), (6, 16), (6, 17), (6, 18), (6, 19), (7, -18), (7, -17), (7, -16), (7, -15), (7, -14), (7, -13), (7, -12), (7, -11), (7, -10), (7, -9), (7, -8), (7, -7), (7, -6), (7, -5), (7, -4), (7, -3), (7, -2), (7, -1), (7, 0), (7, 1), (7, 2), (7, 3), (7, 4), (7, 5), (7, 6), (7, 7), (7, 8), (7, 9), (7, 10), (7, 11), (7, 12), (7, 13), (7, 14), (7, 15), (7, 16), (7, 17), (7, 18), (8, -18), (8, -17), (8, -16), (8, -15), (8, -14), (8, -13), (8, -12), (8, -11), (8, -10), (8, -9), (8, -8), (8, -7), (8, -6), (8, -5), (8, -4), (8, -3), (8, -2), (8, -1), (8, 0), (8, 1), (8, 2), (8, 3), (8, 4), (8, 5), (8, 6), (8, 7), (8, 8), (8, 9), (8, 10), (8, 11), (8, 12), (8, 13), (8, 14), (8, 15), (8, 16), (8, 17), (8, 18), (9, -17), (9, -16), (9, -15), (9, -14), (9, -13), (9, -12), (9, -11), (9, -10), (9, -9), (9, -8), (9, -7), (9, -6), (9, -5), (9, -4), (9, -3), (9, -2), (9, -1), (9, 0), (9, 1), (9, 2), (9, 3), (9, 4), (9, 5), (9, 6), (9, 7), (9, 8), (9, 9), (9, 10), (9, 11), (9, 12), (9, 13), (9, 14), (9, 15), (9, 16), (9, 17), (10, -17), (10, -16), (10, -15), (10, -14), (10, -13), (10, -12), (10, -11), (10, -10), (10, -9), (10, -8), (10, -7), (10, -6), (10, -5), (10, -4), (10, -3), (10, -2), (10, -1), (10, 0), (10, 1), (10, 2), (10, 3), (10, 4), (10, 5), (10, 6), (10, 7), (10, 8), (10, 9), (10, 10), (10, 11), (10, 12), (10, 13), (10, 14), (10, 15), (10, 16), (10, 17), (11, -16), (11, -15), (11, -14), (11, -13), (11, -12), (11, -11), (11, -10), (11, -9), (11, -8), (11, -7), (11, -6), (11, -5), (11, -4), (11, -3), (11, -2), (11, -1), (11, 0), (11, 1), (11, 2), (11, 3), (11, 4), (11, 5), (11, 6), (11, 7), (11, 8), (11, 9), (11, 10), (11, 11), (11, 12), (11, 13), (11, 14), (11, 15), (11, 16), (12, -16), (12, -15), (12, -14), (12, -13), (12, -12), (12, -11), (12, -10), (12, -9), (12, -8), (12, -7), (12, -6), (12, -5), (12, -4), (12, -3), (12, -2), (12, -1), (12, 0), (12, 1), (12, 2), (12, 3), (12, 4), (12, 5), (12, 6), (12, 7), (12, 8), (12, 9), (12, 10), (12, 11), (12, 12), (12, 13), (12, 14), (12, 15), (12, 16), (13, -15), (13, -14), (13, -13), (13, -12), (13, -11), (13, -10), (13, -9), (13, -8), (13, -7), (13, -6), (13, -5), (13, -4), (13, -3), (13, -2), (13, -1), (13, 0), (13, 1), (13, 2), (13, 3), (13, 4), (13, 5), (13, 6), (13, 7), (13, 8), (13, 9), (13, 10), (13, 11), (13, 12), (13, 13), (13, 14), (13, 15), (14, -14), (14, -13), (14, -12), (14, -11), (14, -10), (14, -9), (14, -8), (14, -7), (14, -6), (14, -5), (14, -4), (14, -3), (14, -2), (14, -1), (14, 0), (14, 1), (14, 2), (14, 3), (14, 4), (14, 5), (14, 6), (14, 7), (14, 8), (14, 9), (14, 10), (14, 11), (14, 12), (14, 13), (14, 14), (15, -13), (15, -12), (15, -11), (15, -10), (15, -9), (15, -8), (15, -7), (15, -6), (15, -5), (15, -4), (15, -3), (15, -2), (15, -1), (15, 0), (15, 1), (15, 2), (15, 3), (15, 4), (15, 5), (15, 6), (15, 7), (15, 8), (15, 9), (15, 10), (15, 11), (15, 12), (15, 13), (16, -12), (16, -11), (16, -10), (16, -9), (16, -8), (16, -7), (16, -6), (16, -5), (16, -4), (16, -3), (16, -2), (16, -1), (16, 0), (16, 1), (16, 2), (16, 3), (16, 4), (16, 5), (16, 6), (16, 7), (16, 8), (16, 9), (16, 10), (16, 11), (16, 12), (17, -10), (17, -9), (17, -8), (17, -7), (17, -6), (17, -5), (17, -4), (17, -3), (17, -2), (17, -1), (17, 0), (17, 1), (17, 2), (17, 3), (17, 4), (17, 5), (17, 6), (17, 7), (17, 8), (17, 9), (17, 10), (18, -8), (18, -7), (18, -6), (18, -5), (18, -4), (18, -3), (18, -2), (18, -1), (18, 0), (18, 1), (18, 2), (18, 3), (18, 4), (18, 5), (18, 6), (18, 7), (18, 8), (19, -6), (19, -5), (19, -4), (19, -3), (19, -2), (19, -1), (19, 0), (19, 1), (19, 2), (19, 3), (19, 4), (19, 5), (19, 6), (20, 0)]
	
	let pixelRightCrescent20: [(Int, Int)] = [(0, -20), (0, 20), (6, -19), (6, 19), (8, -18), (8, 18), (10, -17), (10, 17), (12, -16), (12, 16), (13, -15), (13, 15), (14, -14), (14, 14), (15, -13), (15, 13), (16, -12), (16, -11), (16, 11), (16, 12), (17, -10), (17, -9), (17, 9), (17, 10), (18, -8), (18, -7), (18, 7), (18, 8), (19, -6), (19, -5), (19, -4), (19, -3), (19, -2), (19, -1), (19, 1), (19, 2), (19, 3), (19, 4), (19, 5), (19, 6), (20, 0)]
	
	let pixelDownCrescent20: [(Int, Int)] = [(-20, 0), (-19, 6), (-18, 8), (-17, 10), (-16, 12), (-15, 13), (-14, 14), (-13, 15), (-12, 16), (-11, 16), (-10, 17), (-9, 17), (-8, 18), (-7, 18), (-6, 19), (-5, 19), (-4, 19), (-3, 19), (-2, 19), (-1, 19), (0, 20), (1, 19), (2, 19), (3, 19), (4, 19), (5, 19), (6, 19), (7, 18), (8, 18), (9, 17), (10, 17), (11, 16), (12, 16), (13, 15), (14, 14), (15, 13), (16, 12), (17, 10), (18, 8), (19, 6), (20, 0)]
	
	let pixelDownRightCrescent20: [(Int, Int)] = [(-12, 16), (-10, 17), (-8, 18), (-6, 19), (-5, 19), (-4, 19), (-3, 19), (-2, 19), (0, 19), (0, 20), (1, 19), (2, 19), (3, 19), (4, 19), (5, 19), (6, 18), (6, 19), (7, 18), (8, 17), (8, 18), (9, 17), (10, 16), (10, 17), (11, 16), (12, 15), (12, 16), (13, 14), (13, 15), (14, 13), (14, 14), (15, 12), (15, 13), (16, -12), (16, 10), (16, 11), (16, 12), (17, -10), (17, 8), (17, 9), (17, 10), (18, -8), (18, 6), (18, 7), (18, 8), (19, -6), (19, -5), (19, -4), (19, -3), (19, -2), (19, 0), (19, 1), (19, 2), (19, 3), (19, 4), (19, 5), (19, 6), (20, 0)]

	
	var width: Int {
		input.count
	}
	var height: Int {
		input[0].count
	}
	
	var temp = Array(repeating: Array(repeating: 1, count: height), count: width)
	
	for x in 0..<width {
		for y in 0..<height {
			if input[x][y] == 0 {
				
				if x >= 1 && input[x-1][y] == 0 {
					for factor in pixelRightCrescent20 {
						temp[min(max(0, x + factor.0), width - 1)][min(max(0, y + factor.1), height - 1)] = 0
					}
				} else if y >= 1 && input[x][y-1] == 0 {
					for factor in pixelDownCrescent20 {
						temp[min(max(0, x + factor.0), width - 1)][min(max(0, y + factor.1), height - 1)] = 0
					}
				} else if x >= 1 && y >= 1 && input[x-1][y-1] == 0 {
					for factor in pixelDownRightCrescent20 {
						temp[min(max(0, x + factor.0), width - 1)][min(max(0, y + factor.1), height - 1)] = 0
					}
				} else {
					for factor in pixelCircle20 {
						temp[min(max(0, x + factor.0), width - 1)][min(max(0, y + factor.1), height - 1)] = 0
					}
				}
			}
		}
	}
	
	
	return temp
}