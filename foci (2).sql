
--
-- Adatbázis: `foci`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csapatok`
--

CREATE TABLE `csapatok` (
  `csapatnev` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `helyezés` int NOT NULL,
  `osszGol` int NOT NULL,
  `csoport` char(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `csapatok`
--

INSERT INTO `csapatok` (`csapatnev`, `helyezés`, `osszGol`, `csoport`) VALUES
('Debrecen', 3, 19, 'A'),
('Diósgyőr', 3, 18, 'B'),
('Ferencváros', 1, 25, 'A'),
('Győr', 4, 17, 'A'),
('Honvéd', 5, 14, 'B'),
('Kecskemét', 5, 15, 'A'),
('MTK', 4, 16, 'B'),
('Paks', 1, 23, 'B'),
('Újpest', 2, 21, 'A'),
('ZTE', 2, 20, 'B');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jatekosok`
--

CREATE TABLE `jatekosok` (
  `nev` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mezSzam` int NOT NULL,
  `csapatnev` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `csere` tinyint(1) NOT NULL,
  `poszt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `golok` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `jatekosok`
--

INSERT INTO `jatekosok` (`nev`, `mezSzam`, `csapatnev`, `csere`, `poszt`, `golok`) VALUES
('Balogh András', 60, 'Paks', 0, 'csatár', 7),
('Balogh Bence', 46, 'Kecskemét', 0, 'csatár', 5),
('Balogh Dávid', 90, 'MTK', 0, 'csatár', 5),
('Balogh Gergő', 34, 'Győr', 0, 'csatár', 5),
('Balogh István', 100, 'Honvéd', 0, 'csatár', 6),
('Balogh Kristóf', 80, 'Diósgyőr', 0, 'csatár', 2),
('Balogh Levente', 70, 'ZTE', 0, 'csatár', 5),
('Balogh Márk', 99, 'Ferencváros', 0, 'csatár', 10),
('Balogh Máté', 21, 'Debrecen', 0, 'csatár', 0),
('Balogh Péter', 98, 'Újpest', 0, 'csatár', 5),
('Horváth Dávid', 67, 'ZTE', 0, 'védő', 2),
('Horváth Elek', 87, 'MTK', 0, 'védő', 0),
('Horváth Gergő', 18, 'Debrecen', 0, 'védő', 2),
('Horváth László', 77, 'Diósgyőr', 0, 'védő', 1),
('Horváth Márk', 72, 'Újpest', 0, 'védő', 2),
('Horváth Máté', 97, 'Honvéd', 0, 'védő', 1),
('Horváth Péter', 57, 'Paks', 0, 'védő', 1),
('Horváth Tamás', 43, 'Kecskemét', 0, 'védő', 0),
('Horváth Zoltán', 71, 'Ferencváros', 0, 'védő', 1),
('Illés Péter', 31, 'Győr', 0, 'védő', 2),
('Kiss Bence', 10, 'Ferencváros', 0, 'csatár', 4),
('Kiss Gergő', 91, 'Honvéd', 1, 'csatár', 0),
('Kiss István', 25, 'Győr', 0, 'csatár', 2),
('Kiss János', 51, 'Paks', 1, 'csatár', 3),
('Kiss Kristóf', 37, 'Kecskemét', 0, 'csatár', 4),
('Kiss László', 12, 'Debrecen', 1, 'csatár', 6),
('Kiss Levente', 61, 'ZTE', 1, 'csatár', 4),
('Kiss Péter', 81, 'MTK', 1, 'csatár', 2),
('Kiss Tamás', 11, 'Újpest', 0, 'csatár', 3),
('Kiss Zoltán', 71, 'Diósgyőr', 1, 'csatár', 6),
('Kovács András', 66, 'ZTE', 1, 'kapus', 0),
('Kovács Dávid', 67, 'Újpest', 0, 'kapus', 0),
('Kovács Dominik', 86, 'MTK', 1, 'kapus', 0),
('Kovács Gergő', 30, 'Győr', 1, 'kapus', 0),
('Kovács Kristóf', 66, 'Ferencváros', 0, 'kapus', 0),
('Kovács Levente', 76, 'Diósgyőr', 1, 'kapus', 0),
('Kovács Márk', 42, 'Kecskemét', 1, 'kapus', 0),
('Kovács Péter', 17, 'Debrecen', 1, 'kapus', 0),
('Kovács Zoltán', 56, 'Paks', 1, 'kapus', 0),
('Kovács Zsombor', 96, 'Honvéd', 1, 'kapus', 0),
('Molnár Béla', 19, 'Debrecen', 1, 'védő', 1),
('Molnár Bence', 78, 'Diósgyőr', 1, 'védő', 0),
('Molnár Gergő', 68, 'ZTE', 1, 'védő', 1),
('Molnár Imre', 88, 'MTK', 1, 'védő', 1),
('Molnár Levente', 32, 'Győr', 1, 'védő', 0),
('Molnár Máté', 83, 'Újpest', 1, 'védő', 1),
('Molnár Péter', 82, 'Ferencváros', 1, 'védő', 0),
('Molnár Tamás', 58, 'Paks', 1, 'védő', 0),
('Molnár Zoltán', 44, 'Kecskemét', 1, 'védő', 0),
('Molnár Zsigmond', 98, 'Honvéd', 1, 'védő', 0),
('Nagy Ádám', 52, 'Paks', 0, 'kapus', 0),
('Nagy András', 22, 'Ferencváros', 1, 'kapus', 0),
('Nagy Bence', 62, 'ZTE', 0, 'kapus', 0),
('Nagy Dávid', 38, 'Kecskemét', 1, 'kapus', 0),
('Nagy Kristóf', 92, 'Honvéd', 0, 'kapus', 0),
('Nagy László', 82, 'MTK', 0, 'kapus', 0),
('Nagy Levente', 26, 'Győr', 1, 'kapus', 0),
('Nagy Máté', 72, 'Diósgyőr', 0, 'kapus', 0),
('Nagy Norbert', 23, 'Újpest', 1, 'kapus', 0),
('Nagy Zoltán', 13, 'Debrecen', 0, 'kapus', 0),
('Németh Hektor', 99, 'Honvéd', 0, 'középpályás', 2),
('Németh Kevin', 20, 'Debrecen', 0, 'középpályás', 2),
('Németh Kristóf', 45, 'Kecskemét', 0, 'középpályás', 1),
('Németh Lajos', 91, 'Újpest', 0, 'középpályás', 3),
('Németh László', 90, 'Ferencváros', 0, 'középpályás', 4),
('Németh Levente', 59, 'Paks', 0, 'középpályás', 4),
('Németh Máté', 69, 'ZTE', 0, 'középpályás', 4),
('Németh Péter', 89, 'MTK', 0, 'középpályás', 4),
('Németh Tamás', 79, 'Diósgyőr', 0, 'középpályás', 3),
('Németh Zoltán', 33, 'Győr', 0, 'középpályás', 3),
('Szabó Bence', 45, 'Újpest', 1, 'középpályás', 1),
('Szabó Dávid', 15, 'Debrecen', 0, 'középpályás', 1),
('Szabó Kristóf', 64, 'ZTE', 0, 'középpályás', 1),
('Szabó Lajos', 74, 'Diósgyőr', 0, 'középpályás', 2),
('Szabó László', 54, 'Paks', 0, 'középpályás', 1),
('Szabó Levente', 40, 'Kecskemét', 1, 'középpályás', 1),
('Szabó Máté', 48, 'Ferencváros', 0, 'középpályás', 3),
('Szabó Péter', 94, 'Honvéd', 0, 'középpályás', 0),
('Szabó Tamás', 28, 'Győr', 1, 'középpályás', 0),
('Szabó Zoltán', 84, 'MTK', 0, 'középpályás', 1),
('Tóth Bence', 39, 'Kecskemét', 0, 'védő', 0),
('Tóth Gergő', 35, 'Ferencváros', 0, 'védő', 1),
('Tóth Kristóf', 73, 'Diósgyőr', 1, 'védő', 0),
('Tóth Levente', 93, 'Honvéd', 1, 'védő', 0),
('Tóth Márk', 27, 'Győr', 0, 'védő', 1),
('Tóth Máté', 14, 'Debrecen', 1, 'védő', 2),
('Tóth Péter', 63, 'ZTE', 1, 'védő', 0),
('Tóth Sándor', 83, 'MTK', 1, 'védő', 0),
('Tóth Tibor', 34, 'Újpest', 0, 'védő', 2),
('Tóth Zoltán', 53, 'Paks', 1, 'védő', 2),
('Varga András', 95, 'Honvéd', 0, 'csatár', 5),
('Varga Bence', 29, 'Győr', 0, 'csatár', 4),
('Varga Dániel', 85, 'MTK', 0, 'csatár', 3),
('Varga Dávid', 75, 'Diósgyőr', 0, 'csatár', 4),
('Varga Gergő', 41, 'Kecskemét', 0, 'csatár', 4),
('Varga István', 56, 'Újpest', 0, 'csatár', 4),
('Varga Levente', 50, 'Ferencváros', 1, 'csatár', 2),
('Varga Máté', 55, 'Paks', 0, 'csatár', 5),
('Varga Tamás', 16, 'Debrecen', 0, 'csatár', 5),
('Varga Zoltán', 65, 'ZTE', 0, 'csatár', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lapok`
--

CREATE TABLE `lapok` (
  `jatekosNeve` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `szin` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `db` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `lapok`
--

INSERT INTO `lapok` (`jatekosNeve`, `szin`, `db`) VALUES
('Kiss Bence', 'sárga', 1),
('Nagy András', 'piros', 1),
('Tóth Gergő', 'sárga', 2),
('Szabó Máté', 'piros', 1),
('Varga Levente', 'sárga', 1),
('Kovács Kristóf', 'piros', 2),
('Kiss Zoltán', 'sárga', 2),
('Molnár Péter', 'sárga', 2),
('Balogh Dávid', 'piros', 3),
('Balogh Márk', 'sárga', 2),
('Kiss Tamás', 'piros', 2),
('Nagy Norbert', 'sárga', 1),
('Tóth Tibor', 'sárga', 2),
('Németh Kristóf', 'piros', 2),
('Varga István', 'sárga', 2),
('Horváth Dávid', 'piros', 2),
('Nagy Máté', 'sárga', 1),
('Molnár Máté', 'piros', 2),
('Kiss Gergő', 'sárga', 1),
('Molnár Zsigmond', 'piros', 2),
('Kiss László', 'sárga', 2),
('Nagy Zoltán', 'piros', 1),
('Tóth Máté', 'sárga', 1),
('Szabó Dávid', 'piros', 1),
('Varga Tamás', 'sárga', 2),
('Kovács Péter', 'sárga', 2),
('Horváth Gergő', 'piros', 1),
('Molnár Béla', 'sárga', 1),
('Németh Kevin', 'piros', 2),
('Balogh Máté', 'sárga', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csapatok`
--
ALTER TABLE `csapatok`
  ADD PRIMARY KEY (`csapatnev`);

--
-- A tábla indexei `jatekosok`
--
ALTER TABLE `jatekosok`
  ADD PRIMARY KEY (`nev`),
  ADD KEY `jatekosok_csapatnev_index` (`csapatnev`);

--
-- A tábla indexei `lapok`
--
ALTER TABLE `lapok`
  ADD KEY `lapok_jatekosneve_index` (`jatekosNeve`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `jatekosok`
--
ALTER TABLE `jatekosok`
  ADD CONSTRAINT `jatekosok_csapatnev_foreign` FOREIGN KEY (`csapatnev`) REFERENCES `csapatok` (`csapatnev`);

--
-- Megkötések a táblához `lapok`
--
ALTER TABLE `lapok`
  ADD CONSTRAINT `lapok_jatekosneve_foreign` FOREIGN KEY (`jatekosNeve`) REFERENCES `jatekosok` (`nev`);
COMMIT;

