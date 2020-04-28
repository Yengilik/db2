CREATE TABLE Board
    (
      ID INT,
    X INT NOT NULL,
    Y INT NOT NULL,
    VALUE VARCHAR(1) NULL,
    CONSTRAINT position PRIMARY KEY (ID, X, Y)
    );

CREATE TABLE Game
    (
    TURN INT,
      BOARD INT
    );

CREATE TABLE WinConditions (
    Board INT,
  ConditionID INT,
  TileX INT,
  TileY INT
);
INSERT INTO WinConditions (Board, ConditionID, TileX, TileY) VALUES (1, 1, 0, 0);
INSERT INTO WinConditions (Board, ConditionID, TileX, TileY) VALUES (1, 1, 1, 1);
INSERT INTO WinConditions (Board, ConditionID, TileX, TileY) VALUES (1, 1, 2, 2);

INSERT INTO WinConditions (Board, ConditionID, TileX, TileY) VALUES (1, 2, 0, 0);
INSERT INTO WinConditions (Board, ConditionID, TileX, TileY) VALUES (1, 2, 1, 0);
INSERT INTO WinConditions (Board, ConditionID, TileX, TileY) VALUES (1, 2, 2, 0);

INSERT INTO WinConditions (Board, ConditionID, TileX, TileY) VALUES (1, 3, 2, 0);
INSERT INTO WinConditions (Board, ConditionID, TileX, TileY) VALUES (1, 3, 2, 1);
INSERT INTO WinConditions (Board, ConditionID, TileX, TileY) VALUES (1, 3, 2, 2);

SELECT MAX(value), MIN(value), COUNT(value) FROM WinConditions `wc`
JOIN Board `b` ON (wc.tilex = b.x) AND (wc.tiley = b.y) AND (wc.board = b.id)
WHERE wc.board = 1
GROUP BY conditionID;
