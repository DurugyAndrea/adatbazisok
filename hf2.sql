{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "ALTER TABLE Ugyfel\r\n",
                "ALTER COLUMN EMAIL ADD MASKED WITH (FUNCTION = 'email()')\r\n",
                "ALTER TABLE Ugyfel\r\n",
                "ALTER COLUMN NEV ADD MASKED WITH (FUNCTION = 'default()')\r\n",
                "ALTER TABLE Ugyfel\r\n",
                "ALTER COLUMN SZULEV ADD MASKED WITH (FUNCTION = 'random(1,10)')\r\n",
                "ALTER TABLE Ugyfel\r\n",
                "ALTER COLUMN CIM ADD MASKED WITH (FUNCTION = 'partial(1, \"XXX\", 1)')\r\n",
                "\r\n",
                "CREATE USER MaskUser WITHOUT LOGIN\r\n",
                "GRANT SELECT ON Ugyfel TO MaskUser\r\n",
                "\r\n",
                "EXECUTE AS USER= 'MaskUser'\r\n",
                "SELECT * FROM Ugyfel\r\n",
                "REVERT\r\n",
                "--GRANT UNMASK TO 'MaskUser'\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "5a676bfa-861b-452b-8c90-e4c7288e3635",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(200 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.079"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 14,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "LOGIN"
                                    },
                                    {
                                        "name": "EMAIL"
                                    },
                                    {
                                        "name": "NEV"
                                    },
                                    {
                                        "name": "SZULEV"
                                    },
                                    {
                                        "name": "NEM"
                                    },
                                    {
                                        "name": "CIM"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "LOGIN": "aXXX1",
                                    "EMAIL": "áXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "aXXX3",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "aXXX4",
                                    "EMAIL": "áXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "aXXXs",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "N",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "aXXX3",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "AXXXH",
                                    "EMAIL": "AXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "AXXXK",
                                    "EMAIL": "AXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "N",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "aXXXs",
                                    "EMAIL": "áXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "4",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "aXXXr",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "aXXXa",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "aXXXs",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "aXXXi",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "N",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "aXXX2",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "F",
                                    "CIM": "4XXX."
                                },
                                {
                                    "LOGIN": "aXXX1",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "aXXX3",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "aXXX4",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "aXXX1",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "AXXXE",
                                    "EMAIL": "AXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "AXXXN",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "aXXXa",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "N",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "aXXX3",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "N",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "aXXX4",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "N",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "AXXXT",
                                    "EMAIL": "AXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "aXXX3",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "4",
                                    "NEM": "N",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "aXXXo",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "aXXX4",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "AXXXS",
                                    "EMAIL": "AXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "aXXXa",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "N",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "aXXX1",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "N",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "AXXXR",
                                    "EMAIL": "AXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "N",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "aXXX2",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "AXXXK",
                                    "EMAIL": "áXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "aXXX2",
                                    "EMAIL": "áXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "AXXXH",
                                    "EMAIL": "áXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "AXXXM",
                                    "EMAIL": "áXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "aXXXa",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "aXXX1",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "aXXX4",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "4",
                                    "NEM": "F",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "AXXXO",
                                    "EMAIL": "AXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "bXXX1",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "bXXX2",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "bXXX3",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "bXXXt",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "bXXX1",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "bXXX2",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "bXXXu",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "bXXX4",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "N",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "BXXXK",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "N",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "BXXXS",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "N",
                                    "CIM": "4XXX."
                                },
                                {
                                    "LOGIN": "BXXXF",
                                    "EMAIL": "BXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "bXXXe",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "BXXXB",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "4",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "bXXX1",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "bXXX2",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "N",
                                    "CIM": "4XXX."
                                },
                                {
                                    "LOGIN": "BXXXO",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "N",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "bXXXn",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "bXXXa",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "bXXX3",
                                    "EMAIL": "bXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "cXXX3",
                                    "EMAIL": "cXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "dXXXi",
                                    "EMAIL": "dXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "dXXXl",
                                    "EMAIL": "dXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "dXXX1",
                                    "EMAIL": "dXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "dXXXd",
                                    "EMAIL": "dXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "dXXX1",
                                    "EMAIL": "dXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "dXXX4",
                                    "EMAIL": "dXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "dXXXa",
                                    "EMAIL": "dXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "dXXXs",
                                    "EMAIL": "dXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "dXXXa",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "dXXX3",
                                    "EMAIL": "dXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "eXXXt",
                                    "EMAIL": "eXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "eXXXe",
                                    "EMAIL": "eXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "eXXXr",
                                    "EMAIL": "eXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "eXXX2",
                                    "EMAIL": "eXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "eXXX4",
                                    "EMAIL": "eXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "N",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "EXXXE",
                                    "EMAIL": "eXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "eXXXa",
                                    "EMAIL": "eXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "4XXX."
                                },
                                {
                                    "LOGIN": "eXXX2",
                                    "EMAIL": "eXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "N",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "EXXXV",
                                    "EMAIL": "EXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "fXXX1",
                                    "EMAIL": "fXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "fXXX4",
                                    "EMAIL": "fXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "N",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "gXXX1",
                                    "EMAIL": "gXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "gXXX4",
                                    "EMAIL": "gXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "GXXXS",
                                    "EMAIL": "GXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "gXXX1",
                                    "EMAIL": "gXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "1XXX1"
                                },
                                {
                                    "LOGIN": "gXXX0",
                                    "EMAIL": "gXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "gXXXj",
                                    "EMAIL": "gXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "gXXXv",
                                    "EMAIL": "gXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "GXXXK",
                                    "EMAIL": "gXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "4",
                                    "NEM": "N",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "GXXXO",
                                    "EMAIL": "GXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "F",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "hXXX3",
                                    "EMAIL": "hXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "IXXXA",
                                    "EMAIL": "iXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "N",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "iXXX3",
                                    "EMAIL": "iXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "iXXXe",
                                    "EMAIL": "iXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "iXXX1",
                                    "EMAIL": "iXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "iXXXn",
                                    "EMAIL": "iXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "iXXX1",
                                    "EMAIL": "iXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "IXXXV",
                                    "EMAIL": "IXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "jXXX3",
                                    "EMAIL": "jXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "JXXXG",
                                    "EMAIL": "JXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "JXXXP",
                                    "EMAIL": "JXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "jXXXf",
                                    "EMAIL": "jXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "jXXX2",
                                    "EMAIL": "jXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "4",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "JXXXG",
                                    "EMAIL": "jXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "JXXXH",
                                    "EMAIL": "JXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "jXXXa",
                                    "EMAIL": "jXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "N",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "jXXX4",
                                    "EMAIL": "jXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "jXXX4",
                                    "EMAIL": "jXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "kXXX2",
                                    "EMAIL": "aXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "kXXXa",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "N",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "kXXXn",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "kXXX4",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "kXXXi",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "kXXXa",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "N",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "kXXX2",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "N",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "kXXX4",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "kXXX4",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "4",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "kXXXi",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "kXXX4",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "KXXXM",
                                    "EMAIL": "KXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "kXXXa",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "kXXX1",
                                    "EMAIL": "kXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "4",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "KXXXG",
                                    "EMAIL": "KXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "lXXXs",
                                    "EMAIL": "lXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "1XXX1"
                                },
                                {
                                    "LOGIN": "lXXXa",
                                    "EMAIL": "lXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "lXXX1",
                                    "EMAIL": "lXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "lXXX2",
                                    "EMAIL": "lXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "LXXXA",
                                    "EMAIL": "lXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "LXXXN",
                                    "EMAIL": "lXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "mXXX1",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "mXXXk",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "MXXXH",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "F",
                                    "CIM": "4XXX."
                                },
                                {
                                    "LOGIN": "mXXXn",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "MXXXK",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "mXXX2",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "MXXXS",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "mXXXa",
                                    "EMAIL": "nXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "MXXXJ",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "mXXX2",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "MXXXB",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "4XXX."
                                },
                                {
                                    "LOGIN": "MXXXM",
                                    "EMAIL": "mXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "NXXXF",
                                    "EMAIL": "nXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "nXXX3",
                                    "EMAIL": "nXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "nXXX4",
                                    "EMAIL": "nXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "N",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "NXXXT",
                                    "EMAIL": "nXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "N",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "nXXXt",
                                    "EMAIL": "nXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "nXXX2",
                                    "EMAIL": "nXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "nXXX4",
                                    "EMAIL": "nXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "nXXX5",
                                    "EMAIL": "nXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "pXXXl",
                                    "EMAIL": "pXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "pXXX1",
                                    "EMAIL": "pXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "pXXX2",
                                    "EMAIL": "pXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "4",
                                    "NEM": "F",
                                    "CIM": "4XXXA"
                                },
                                {
                                    "LOGIN": "pXXX3",
                                    "EMAIL": "pXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "pXXX4",
                                    "EMAIL": "pXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "PXXXB",
                                    "EMAIL": "pXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "pXXXa",
                                    "EMAIL": "pXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "rXXX4",
                                    "EMAIL": "rXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "rXXX4",
                                    "EMAIL": "rXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "6",
                                    "NEM": "N",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "RXXXK",
                                    "EMAIL": "rXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "N",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "RXXXS",
                                    "EMAIL": "RXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "rXXX2",
                                    "EMAIL": "rXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "RXXXI",
                                    "EMAIL": "rXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "RXXXP",
                                    "EMAIL": "RXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "F",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "rXXXd",
                                    "EMAIL": "rXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "rXXX1",
                                    "EMAIL": "rXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "rXXX2",
                                    "EMAIL": "rXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "N",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "sXXXr",
                                    "EMAIL": "sXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "sXXX3",
                                    "EMAIL": "sXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "sXXX4",
                                    "EMAIL": "sXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "F",
                                    "CIM": "4XXX."
                                },
                                {
                                    "LOGIN": "sXXXa",
                                    "EMAIL": "sXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "N",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "SXXXF",
                                    "EMAIL": "SXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "sXXXn",
                                    "EMAIL": "sXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "sXXXs",
                                    "EMAIL": "sXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "SXXXM",
                                    "EMAIL": "sXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "SXXXS",
                                    "EMAIL": "sXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "F",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "sXXX1",
                                    "EMAIL": "sXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "4",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "tXXX2",
                                    "EMAIL": "tXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "N",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "tXXXs",
                                    "EMAIL": "tXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "F",
                                    "CIM": "4XXX."
                                },
                                {
                                    "LOGIN": "TXXXF",
                                    "EMAIL": "TXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "9XXX."
                                },
                                {
                                    "LOGIN": "tXXXr",
                                    "EMAIL": "tXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "F",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "tXXX2",
                                    "EMAIL": "tXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "tXXXr",
                                    "EMAIL": "tXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "tXXXa",
                                    "EMAIL": "tXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "N",
                                    "CIM": "1XXX."
                                },
                                {
                                    "LOGIN": "tXXX2",
                                    "EMAIL": "tXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "N",
                                    "CIM": "5XXX."
                                },
                                {
                                    "LOGIN": "tXXXe",
                                    "EMAIL": "tXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "N",
                                    "CIM": "7XXX."
                                },
                                {
                                    "LOGIN": "vXXXn",
                                    "EMAIL": "vXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "vXXX4",
                                    "EMAIL": "vXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "VXXXU",
                                    "EMAIL": "vXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "7",
                                    "NEM": "N",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "VXXXK",
                                    "EMAIL": "vXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "4",
                                    "NEM": "F",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "vXXX3",
                                    "EMAIL": "vXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "zXXXn",
                                    "EMAIL": "zXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "3XXX."
                                },
                                {
                                    "LOGIN": "zXXX4",
                                    "EMAIL": "zXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "ZXXXP",
                                    "EMAIL": "zXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "F",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "ZXXXT",
                                    "EMAIL": "zXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "5",
                                    "NEM": "F",
                                    "CIM": "4XXX."
                                },
                                {
                                    "LOGIN": "zXXX1",
                                    "EMAIL": "zXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "8",
                                    "NEM": "N",
                                    "CIM": "2XXX."
                                },
                                {
                                    "LOGIN": "zXXX1",
                                    "EMAIL": "zXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "9",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "ZXXXJ",
                                    "EMAIL": "ZXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "F",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "zXXXa",
                                    "EMAIL": "zXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "2",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                },
                                {
                                    "LOGIN": "zXXX3",
                                    "EMAIL": "zXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "1",
                                    "NEM": "N",
                                    "CIM": "8XXX."
                                },
                                {
                                    "LOGIN": "zXXXa",
                                    "EMAIL": "zXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "3",
                                    "NEM": "N",
                                    "CIM": "4XXX."
                                },
                                {
                                    "LOGIN": "ZXXXV",
                                    "EMAIL": "zXXX@XXXX.com",
                                    "NEV": "xxxx",
                                    "SZULEV": "10",
                                    "NEM": "N",
                                    "CIM": "6XXX."
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>LOGIN</th><th>EMAIL</th><th>NEV</th><th>SZULEV</th><th>NEM</th><th>CIM</th></tr><tr><td>aXXX1</td><td>áXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>F</td><td>5XXX.</td></tr><tr><td>aXXX3</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>3XXX.</td></tr><tr><td>aXXX4</td><td>áXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>8XXX.</td></tr><tr><td>aXXXs</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>N</td><td>5XXX.</td></tr><tr><td>aXXX3</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>N</td><td>6XXX.</td></tr><tr><td>AXXXH</td><td>AXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>8XXX.</td></tr><tr><td>AXXXK</td><td>AXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>N</td><td>1XXX.</td></tr><tr><td>aXXXs</td><td>áXXX@XXXX.com</td><td>xxxx</td><td>4</td><td>F</td><td>9XXX.</td></tr><tr><td>aXXXr</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>F</td><td>5XXX.</td></tr><tr><td>aXXXa</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>2XXX.</td></tr><tr><td>aXXXs</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>6XXX.</td></tr><tr><td>aXXXi</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>N</td><td>5XXX.</td></tr><tr><td>aXXX2</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>F</td><td>4XXX.</td></tr><tr><td>aXXX1</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>7XXX.</td></tr><tr><td>aXXX3</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>F</td><td>1XXX.</td></tr><tr><td>aXXX4</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>3XXX.</td></tr><tr><td>aXXX1</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>F</td><td>5XXX.</td></tr><tr><td>AXXXE</td><td>AXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>F</td><td>5XXX.</td></tr><tr><td>AXXXN</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>F</td><td>6XXX.</td></tr><tr><td>aXXXa</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>N</td><td>1XXX.</td></tr><tr><td>aXXX3</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>N</td><td>7XXX.</td></tr><tr><td>aXXX4</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>N</td><td>1XXX.</td></tr><tr><td>AXXXT</td><td>AXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>N</td><td>6XXX.</td></tr><tr><td>aXXX3</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>4</td><td>N</td><td>1XXX.</td></tr><tr><td>aXXXo</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>N</td><td>2XXX.</td></tr><tr><td>aXXX4</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>N</td><td>2XXX.</td></tr><tr><td>AXXXS</td><td>AXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>5XXX.</td></tr><tr><td>aXXXa</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>N</td><td>7XXX.</td></tr><tr><td>aXXX1</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>N</td><td>1XXX.</td></tr><tr><td>AXXXR</td><td>AXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>N</td><td>8XXX.</td></tr><tr><td>aXXX2</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>7XXX.</td></tr><tr><td>AXXXK</td><td>áXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>8XXX.</td></tr><tr><td>aXXX2</td><td>áXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>F</td><td>2XXX.</td></tr><tr><td>AXXXH</td><td>áXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>7XXX.</td></tr><tr><td>AXXXM</td><td>áXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>3XXX.</td></tr><tr><td>aXXXa</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>F</td><td>3XXX.</td></tr><tr><td>aXXX1</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>3XXX.</td></tr><tr><td>aXXX4</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>4</td><td>F</td><td>7XXX.</td></tr><tr><td>AXXXO</td><td>AXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>8XXX.</td></tr><tr><td>bXXX1</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>F</td><td>2XXX.</td></tr><tr><td>bXXX2</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>3XXX.</td></tr><tr><td>bXXX3</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>2XXX.</td></tr><tr><td>bXXXt</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>6XXX.</td></tr><tr><td>bXXX1</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>F</td><td>9XXX.</td></tr><tr><td>bXXX2</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>2XXX.</td></tr><tr><td>bXXXu</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>3XXX.</td></tr><tr><td>bXXX4</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>N</td><td>8XXX.</td></tr><tr><td>BXXXK</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>N</td><td>7XXX.</td></tr><tr><td>BXXXS</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>N</td><td>4XXX.</td></tr><tr><td>BXXXF</td><td>BXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>5XXX.</td></tr><tr><td>bXXXe</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>6XXX.</td></tr><tr><td>BXXXB</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>4</td><td>F</td><td>8XXX.</td></tr><tr><td>bXXX1</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>N</td><td>2XXX.</td></tr><tr><td>bXXX2</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>N</td><td>4XXX.</td></tr><tr><td>BXXXO</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>N</td><td>5XXX.</td></tr><tr><td>bXXXn</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>F</td><td>1XXX.</td></tr><tr><td>bXXXa</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>N</td><td>2XXX.</td></tr><tr><td>bXXX3</td><td>bXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>N</td><td>2XXX.</td></tr><tr><td>cXXX3</td><td>cXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>9XXX.</td></tr><tr><td>dXXXi</td><td>dXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>7XXX.</td></tr><tr><td>dXXXl</td><td>dXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>9XXX.</td></tr><tr><td>dXXX1</td><td>dXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>3XXX.</td></tr><tr><td>dXXXd</td><td>dXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>1XXX.</td></tr><tr><td>dXXX1</td><td>dXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>5XXX.</td></tr><tr><td>dXXX4</td><td>dXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>3XXX.</td></tr><tr><td>dXXXa</td><td>dXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>1XXX.</td></tr><tr><td>dXXXs</td><td>dXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>F</td><td>2XXX.</td></tr><tr><td>dXXXa</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>9XXX.</td></tr><tr><td>dXXX3</td><td>dXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>N</td><td>2XXX.</td></tr><tr><td>eXXXt</td><td>eXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>6XXX.</td></tr><tr><td>eXXXe</td><td>eXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>N</td><td>6XXX.</td></tr><tr><td>eXXXr</td><td>eXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>N</td><td>6XXX.</td></tr><tr><td>eXXX2</td><td>eXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>N</td><td>6XXX.</td></tr><tr><td>eXXX4</td><td>eXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>N</td><td>3XXX.</td></tr><tr><td>EXXXE</td><td>eXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>6XXX.</td></tr><tr><td>eXXXa</td><td>eXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>4XXX.</td></tr><tr><td>eXXX2</td><td>eXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>N</td><td>9XXX.</td></tr><tr><td>EXXXV</td><td>EXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>N</td><td>6XXX.</td></tr><tr><td>fXXX1</td><td>fXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>5XXX.</td></tr><tr><td>fXXX4</td><td>fXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>N</td><td>9XXX.</td></tr><tr><td>gXXX1</td><td>gXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>F</td><td>6XXX.</td></tr><tr><td>gXXX4</td><td>gXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>F</td><td>9XXX.</td></tr><tr><td>GXXXS</td><td>GXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>3XXX.</td></tr><tr><td>gXXX1</td><td>gXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>1XXX1</td></tr><tr><td>gXXX0</td><td>gXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>N</td><td>2XXX.</td></tr><tr><td>gXXXj</td><td>gXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>8XXX.</td></tr><tr><td>gXXXv</td><td>gXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>F</td><td>3XXX.</td></tr><tr><td>GXXXK</td><td>gXXX@XXXX.com</td><td>xxxx</td><td>4</td><td>N</td><td>8XXX.</td></tr><tr><td>GXXXO</td><td>GXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>F</td><td>7XXX.</td></tr><tr><td>hXXX3</td><td>hXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>F</td><td>1XXX.</td></tr><tr><td>IXXXA</td><td>iXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>N</td><td>9XXX.</td></tr><tr><td>iXXX3</td><td>iXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>N</td><td>2XXX.</td></tr><tr><td>iXXXe</td><td>iXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>9XXX.</td></tr><tr><td>iXXX1</td><td>iXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>1XXX.</td></tr><tr><td>iXXXn</td><td>iXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>2XXX.</td></tr><tr><td>iXXX1</td><td>iXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>7XXX.</td></tr><tr><td>IXXXV</td><td>IXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>6XXX.</td></tr><tr><td>jXXX3</td><td>jXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>F</td><td>8XXX.</td></tr><tr><td>JXXXG</td><td>JXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>F</td><td>3XXX.</td></tr><tr><td>JXXXP</td><td>JXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>5XXX.</td></tr><tr><td>jXXXf</td><td>jXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>6XXX.</td></tr><tr><td>jXXX2</td><td>jXXX@XXXX.com</td><td>xxxx</td><td>4</td><td>F</td><td>6XXX.</td></tr><tr><td>JXXXG</td><td>jXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>2XXX.</td></tr><tr><td>JXXXH</td><td>JXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>N</td><td>2XXX.</td></tr><tr><td>jXXXa</td><td>jXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>N</td><td>5XXX.</td></tr><tr><td>jXXX4</td><td>jXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>7XXX.</td></tr><tr><td>jXXX4</td><td>jXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>N</td><td>6XXX.</td></tr><tr><td>kXXX2</td><td>aXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>2XXX.</td></tr><tr><td>kXXXa</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>N</td><td>8XXX.</td></tr><tr><td>kXXXn</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>N</td><td>2XXX.</td></tr><tr><td>kXXX4</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>2XXX.</td></tr><tr><td>kXXXi</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>7XXX.</td></tr><tr><td>kXXXa</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>N</td><td>8XXX.</td></tr><tr><td>kXXX2</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>N</td><td>8XXX.</td></tr><tr><td>kXXX4</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>2XXX.</td></tr><tr><td>kXXX4</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>4</td><td>F</td><td>8XXX.</td></tr><tr><td>kXXXi</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>N</td><td>6XXX.</td></tr><tr><td>kXXX4</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>F</td><td>1XXX.</td></tr><tr><td>KXXXM</td><td>KXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>F</td><td>9XXX.</td></tr><tr><td>kXXXa</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>N</td><td>6XXX.</td></tr><tr><td>kXXX1</td><td>kXXX@XXXX.com</td><td>xxxx</td><td>4</td><td>N</td><td>2XXX.</td></tr><tr><td>KXXXG</td><td>KXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>N</td><td>6XXX.</td></tr><tr><td>lXXXs</td><td>lXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>1XXX1</td></tr><tr><td>lXXXa</td><td>lXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>8XXX.</td></tr><tr><td>lXXX1</td><td>lXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>5XXX.</td></tr><tr><td>lXXX2</td><td>lXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>9XXX.</td></tr><tr><td>LXXXA</td><td>lXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>F</td><td>2XXX.</td></tr><tr><td>LXXXN</td><td>lXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>1XXX.</td></tr><tr><td>mXXX1</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>1XXX.</td></tr><tr><td>mXXXk</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>1XXX.</td></tr><tr><td>MXXXH</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>F</td><td>4XXX.</td></tr><tr><td>mXXXn</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>5XXX.</td></tr><tr><td>MXXXK</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>F</td><td>1XXX.</td></tr><tr><td>mXXX2</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>2XXX.</td></tr><tr><td>MXXXS</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>F</td><td>9XXX.</td></tr><tr><td>mXXXa</td><td>nXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>6XXX.</td></tr><tr><td>MXXXJ</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>F</td><td>6XXX.</td></tr><tr><td>mXXX2</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>2XXX.</td></tr><tr><td>MXXXB</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>4XXX.</td></tr><tr><td>MXXXM</td><td>mXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>N</td><td>2XXX.</td></tr><tr><td>NXXXF</td><td>nXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>F</td><td>5XXX.</td></tr><tr><td>nXXX3</td><td>nXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>1XXX.</td></tr><tr><td>nXXX4</td><td>nXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>N</td><td>5XXX.</td></tr><tr><td>NXXXT</td><td>nXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>N</td><td>1XXX.</td></tr><tr><td>nXXXt</td><td>nXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>F</td><td>5XXX.</td></tr><tr><td>nXXX2</td><td>nXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>F</td><td>2XXX.</td></tr><tr><td>nXXX4</td><td>nXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>F</td><td>3XXX.</td></tr><tr><td>nXXX5</td><td>nXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>F</td><td>8XXX.</td></tr><tr><td>pXXXl</td><td>pXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>1XXX.</td></tr><tr><td>pXXX1</td><td>pXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>6XXX.</td></tr><tr><td>pXXX2</td><td>pXXX@XXXX.com</td><td>xxxx</td><td>4</td><td>F</td><td>4XXXA</td></tr><tr><td>pXXX3</td><td>pXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>1XXX.</td></tr><tr><td>pXXX4</td><td>pXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>F</td><td>5XXX.</td></tr><tr><td>PXXXB</td><td>pXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>F</td><td>3XXX.</td></tr><tr><td>pXXXa</td><td>pXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>N</td><td>2XXX.</td></tr><tr><td>rXXX4</td><td>rXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>F</td><td>9XXX.</td></tr><tr><td>rXXX4</td><td>rXXX@XXXX.com</td><td>xxxx</td><td>6</td><td>N</td><td>8XXX.</td></tr><tr><td>RXXXK</td><td>rXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>N</td><td>7XXX.</td></tr><tr><td>RXXXS</td><td>RXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>2XXX.</td></tr><tr><td>rXXX2</td><td>rXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>F</td><td>2XXX.</td></tr><tr><td>RXXXI</td><td>rXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>F</td><td>2XXX.</td></tr><tr><td>RXXXP</td><td>RXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>F</td><td>5XXX.</td></tr><tr><td>rXXXd</td><td>rXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>2XXX.</td></tr><tr><td>rXXX1</td><td>rXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>2XXX.</td></tr><tr><td>rXXX2</td><td>rXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>N</td><td>5XXX.</td></tr><tr><td>sXXXr</td><td>sXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>8XXX.</td></tr><tr><td>sXXX3</td><td>sXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>F</td><td>8XXX.</td></tr><tr><td>sXXX4</td><td>sXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>F</td><td>4XXX.</td></tr><tr><td>sXXXa</td><td>sXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>N</td><td>5XXX.</td></tr><tr><td>SXXXF</td><td>SXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>7XXX.</td></tr><tr><td>sXXXn</td><td>sXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>7XXX.</td></tr><tr><td>sXXXs</td><td>sXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>6XXX.</td></tr><tr><td>SXXXM</td><td>sXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>F</td><td>1XXX.</td></tr><tr><td>SXXXS</td><td>sXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>F</td><td>1XXX.</td></tr><tr><td>sXXX1</td><td>sXXX@XXXX.com</td><td>xxxx</td><td>4</td><td>N</td><td>6XXX.</td></tr><tr><td>tXXX2</td><td>tXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>N</td><td>3XXX.</td></tr><tr><td>tXXXs</td><td>tXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>F</td><td>4XXX.</td></tr><tr><td>TXXXF</td><td>TXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>9XXX.</td></tr><tr><td>tXXXr</td><td>tXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>F</td><td>7XXX.</td></tr><tr><td>tXXX2</td><td>tXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>F</td><td>6XXX.</td></tr><tr><td>tXXXr</td><td>tXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>2XXX.</td></tr><tr><td>tXXXa</td><td>tXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>N</td><td>1XXX.</td></tr><tr><td>tXXX2</td><td>tXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>N</td><td>5XXX.</td></tr><tr><td>tXXXe</td><td>tXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>N</td><td>7XXX.</td></tr><tr><td>vXXXn</td><td>vXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>F</td><td>3XXX.</td></tr><tr><td>vXXX4</td><td>vXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>N</td><td>6XXX.</td></tr><tr><td>VXXXU</td><td>vXXX@XXXX.com</td><td>xxxx</td><td>7</td><td>N</td><td>3XXX.</td></tr><tr><td>VXXXK</td><td>vXXX@XXXX.com</td><td>xxxx</td><td>4</td><td>F</td><td>2XXX.</td></tr><tr><td>vXXX3</td><td>vXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>N</td><td>2XXX.</td></tr><tr><td>zXXXn</td><td>zXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>3XXX.</td></tr><tr><td>zXXX4</td><td>zXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>F</td><td>8XXX.</td></tr><tr><td>ZXXXP</td><td>zXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>F</td><td>6XXX.</td></tr><tr><td>ZXXXT</td><td>zXXX@XXXX.com</td><td>xxxx</td><td>5</td><td>F</td><td>4XXX.</td></tr><tr><td>zXXX1</td><td>zXXX@XXXX.com</td><td>xxxx</td><td>8</td><td>N</td><td>2XXX.</td></tr><tr><td>zXXX1</td><td>zXXX@XXXX.com</td><td>xxxx</td><td>9</td><td>F</td><td>8XXX.</td></tr><tr><td>ZXXXJ</td><td>ZXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>F</td><td>8XXX.</td></tr><tr><td>zXXXa</td><td>zXXX@XXXX.com</td><td>xxxx</td><td>2</td><td>N</td><td>6XXX.</td></tr><tr><td>zXXX3</td><td>zXXX@XXXX.com</td><td>xxxx</td><td>1</td><td>N</td><td>8XXX.</td></tr><tr><td>zXXXa</td><td>zXXX@XXXX.com</td><td>xxxx</td><td>3</td><td>N</td><td>4XXX.</td></tr><tr><td>ZXXXV</td><td>zXXX@XXXX.com</td><td>xxxx</td><td>10</td><td>N</td><td>6XXX.</td></tr></table>"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "error",
                    "ename": "",
                    "evalue": "Msg 15023, Level 16, State 1, Line 11\r\nUser, group, or role 'MaskUser' already exists in the current database.",
                    "traceback": []
                }
            ],
            "execution_count": 14
        }
    ]
}