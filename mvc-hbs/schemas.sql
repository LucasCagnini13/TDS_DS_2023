CREATE TABLE `funcionarios` (
    `ID` int(11) NOT NULL AUTO_INCREMENT,
    `NOME` varchar(255) NOT NULL,
    `CPF` varchar(12) NOT NULL,
    `SEXO` char(1) DEFAULT NULL,
    `TELEFONE` varchar(50) NOT NULL,
    `STATUS` tinyint(1) DEFAULT NULL,
    `DATA_NSC` date DEFAULT NULL,
    `SALARIO` double DEFAULT NULL,
    PRIMARY KEY (`ID`)
);

CREATE TABLE `dependentes` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nome` varchar(255) NOT NULL,
    `telefone` varchar(255) DEFAULT NULL,
    `funcionario_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `FK_FUNCIONARIO` (`funcionario_id`),
    CONSTRAINT `FK_FUNCIONARIO` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`ID`) ON DELETE CASCADE
);

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '48780518330',
        '2006-11-01',
        1,
        'Jordon',
        6092.83,
        'M',
        1,
        '52144619011'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '74972078930',
        '2013-03-25',
        2,
        'Hadrian',
        3175.86,
        'M',
        1,
        '40559977821'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '26347749440',
        '2008-11-08',
        3,
        'Sosanna',
        2654.36,
        'F',
        0,
        '31111846741'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '81710663140',
        '2018-02-24',
        4,
        'Cecil',
        4444.49,
        'M',
        0,
        '37731312291'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '20381240630',
        '2020-06-05',
        5,
        'Elihu',
        5036.53,
        'M',
        1,
        '54949678841'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '14462992490',
        '1999-08-19',
        6,
        'Hally',
        6581.8,
        'F',
        0,
        '75929097561'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '35371974050',
        '2018-09-01',
        7,
        'Shelia',
        2344.58,
        'F',
        0,
        '60878635671'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '67793307500',
        '2020-04-08',
        8,
        'Emmanuel',
        5332.11,
        'M',
        1,
        '72345095141'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '64178906230',
        '2007-10-04',
        9,
        'Emmalynn',
        4383.35,
        'F',
        0,
        '11820206031'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '56258422030',
        '2008-04-14',
        10,
        'Janelle',
        5284.17,
        'F',
        0,
        '40014126141'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '12892511080',
        '2003-08-08',
        11,
        'Laney',
        5191.68,
        'M',
        1,
        '69363209641'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '99940455070',
        '2017-10-02',
        12,
        'Claiborn',
        3748.91,
        'M',
        0,
        '68253749661'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '51379070310',
        '2001-05-07',
        13,
        'Ellswerth',
        2578.49,
        'M',
        1,
        '20064604001'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '42280130710',
        '2018-04-28',
        14,
        'Antonella',
        3007.63,
        'F',
        0,
        '18213573811'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '87333553900',
        '2021-08-19',
        15,
        'Brina',
        5224.22,
        'F',
        0,
        '27896749531'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '99981289870',
        '2021-10-29',
        16,
        'Garold',
        5416.48,
        'M',
        1,
        '21849547841'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '52335244520',
        '2001-07-05',
        17,
        'Gayleen',
        4368.6,
        'F',
        1,
        '82278177121'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '40536477930',
        '2000-12-29',
        18,
        'Jada',
        4928.72,
        'F',
        0,
        '14086188551'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '46044668780',
        '2012-03-12',
        19,
        'Barbe',
        3455.16,
        'F',
        1,
        '46758793461'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '97599529310',
        '2008-11-21',
        20,
        'Alvin',
        2358.12,
        'M',
        1,
        '53651841971'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '30047521600',
        '1998-07-10',
        21,
        'Brittan',
        4131.3,
        'F',
        1,
        '19789180031'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '24958733310',
        '2016-01-19',
        22,
        'Kahlil',
        1345.8,
        'M',
        1,
        '52110409681'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '58749491380',
        '2000-03-22',
        23,
        'Elsi',
        3691.9,
        'F',
        1,
        '49584438861'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '43024382290',
        '2009-07-21',
        24,
        'Aurelea',
        4578.49,
        'F',
        1,
        '38781101351'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '30871655000',
        '2013-04-26',
        25,
        'Huberto',
        4439.52,
        'M',
        1,
        '20166265661'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '16624165700',
        '2019-01-06',
        26,
        'Waldemar',
        4066.6,
        'M',
        1,
        '11328871621'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '91489845410',
        '2013-09-07',
        27,
        'Eal',
        6569.77,
        'M',
        1,
        '39818453791'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '34742357620',
        '2012-03-18',
        28,
        'Irita',
        5919.31,
        'F',
        0,
        '30157854061'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '96558242650',
        '2018-05-18',
        29,
        'Silvie',
        6374.85,
        'F',
        1,
        '65877866911'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '24021192620',
        '2008-02-23',
        30,
        'Glynda',
        4994.78,
        'F',
        1,
        '26912206781'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '12350599990',
        '2003-01-14',
        31,
        'Marsha',
        3007.98,
        'F',
        0,
        '40494629371'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '70129776900',
        '1998-01-19',
        32,
        'Cordula',
        4208.59,
        'F',
        0,
        '51355432331'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '24355728020',
        '1997-11-09',
        33,
        'Mordy',
        4193.12,
        'M',
        1,
        '21256321421'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '52532096950',
        '2011-05-09',
        34,
        'Hali',
        2424.24,
        'F',
        0,
        '29558859291'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '39912228860',
        '2021-03-11',
        35,
        'Joya',
        2707.13,
        'F',
        1,
        '12884261881'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '39384644510',
        '2020-07-17',
        36,
        'Drusilla',
        5621.01,
        'F',
        1,
        '80132289581'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '79919371990',
        '2000-12-06',
        37,
        'Karlens',
        4532.93,
        'M',
        1,
        '65668802191'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '35563141270',
        '2016-04-26',
        38,
        'Micky',
        1598.73,
        'M',
        1,
        '43585549051'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '42961233680',
        '1997-10-16',
        39,
        'Dukie',
        1977.53,
        'M',
        0,
        '97945468371'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '35797663140',
        '2009-05-10',
        40,
        'Cassandre',
        4246.46,
        'F',
        0,
        '73888310431'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '16343796470',
        '2004-02-01',
        41,
        'Elyn',
        1740.75,
        'F',
        1,
        '11336002791'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '62013491130',
        '2002-11-07',
        42,
        'Max',
        2669.08,
        'M',
        1,
        '67349936511'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '62648686250',
        '2012-03-29',
        43,
        'Fabiano',
        5742.69,
        'M',
        1,
        '26211424301'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '79879926010',
        '2019-06-24',
        44,
        'Ivie',
        4043.64,
        'F',
        0,
        '86422186281'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '10937621290',
        '2018-10-06',
        45,
        'Ravi',
        2040.02,
        'M',
        0,
        '86993680631'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '57954529780',
        '2018-09-22',
        46,
        'Carter',
        5386.45,
        'M',
        0,
        '90870014341'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '74070898960',
        '2001-07-17',
        47,
        'Cob',
        4767.05,
        'M',
        0,
        '21052436251'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '45153925010',
        '2009-05-23',
        48,
        'Serene',
        2556.22,
        'F',
        1,
        '19977913581'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '31091191730',
        '2016-07-14',
        49,
        'Fionnula',
        1748.38,
        'F',
        1,
        '58742142911'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '99976658190',
        '2009-05-14',
        50,
        'Tine',
        3014.35,
        'F',
        0,
        '80161908851'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '73645389750',
        '2003-07-26',
        51,
        'Basilio',
        3661.26,
        'M',
        0,
        '66472453071'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '75489619300',
        '2007-01-22',
        52,
        'Armand',
        2088.24,
        'M',
        0,
        '60126164621'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '33011863170',
        '2006-07-15',
        53,
        'Zilvia',
        5372.36,
        'F',
        0,
        '94811187421'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '47355903150',
        '2021-11-16',
        54,
        'Rog',
        4276.39,
        'M',
        1,
        '33668329141'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '38219192400',
        '2005-01-08',
        55,
        'Nicolina',
        2821.32,
        'F',
        0,
        '98938582041'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '61397820220',
        '1998-02-06',
        56,
        'Retha',
        4846.07,
        'F',
        1,
        '81058127051'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '73843254310',
        '2003-02-18',
        57,
        'Tory',
        4985.11,
        'F',
        0,
        '11587292521'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '19030828790',
        '2016-10-24',
        58,
        'Kellia',
        6252.45,
        'F',
        0,
        '67869891931'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '91852792080',
        '2001-08-28',
        59,
        'Barn',
        1542.35,
        'M',
        1,
        '15364822011'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '65619901680',
        '2005-07-29',
        60,
        'Jeanelle',
        6311.52,
        'F',
        0,
        '64166350381'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '53126060410',
        '2004-04-03',
        61,
        'Mallissa',
        4780.81,
        'F',
        0,
        '56559371021'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '37671724730',
        '2016-12-02',
        62,
        'Darnell',
        5073.01,
        'M',
        0,
        '71833058971'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '32228543730',
        '1998-09-25',
        63,
        'Meris',
        2246.12,
        'F',
        0,
        '53254601371'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '94396098640',
        '2014-05-22',
        64,
        'Gregorio',
        4067.38,
        'M',
        0,
        '28240248541'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '19752901160',
        '1997-06-02',
        65,
        'Nara',
        4101.17,
        'F',
        1,
        '61296576311'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '69622747500',
        '2001-01-09',
        66,
        'Ingunna',
        6402.2,
        'F',
        0,
        '86788841521'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '77728623330',
        '2012-11-18',
        67,
        'Curran',
        1965.75,
        'M',
        0,
        '95098721841'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '45349557210',
        '2016-06-21',
        68,
        'Danila',
        5311.87,
        'F',
        1,
        '61152930601'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '29021545480',
        '2009-01-05',
        69,
        'Opaline',
        5362.3,
        'F',
        0,
        '25591391611'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '88979134960',
        '2010-01-26',
        70,
        'Dulcine',
        4771.2,
        'F',
        0,
        '42754639101'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '43237057320',
        '2011-08-12',
        71,
        'Erin',
        4614.98,
        'F',
        1,
        '48591158421'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '46247339120',
        '1998-05-22',
        72,
        'Chandra',
        3655.94,
        'F',
        0,
        '42937856521'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '59527305730',
        '2007-12-25',
        73,
        'Jeniffer',
        2587.74,
        'F',
        1,
        '39829691121'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '55197684260',
        '2004-09-15',
        74,
        'Claudia',
        4228.53,
        'F',
        0,
        '50810642871'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '88686279510',
        '1997-06-30',
        75,
        'Abdel',
        4184.82,
        'M',
        0,
        '28396110801'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '93016473450',
        '2020-08-11',
        76,
        'Marlowe',
        5116.32,
        'M',
        0,
        '18997505241'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '95192642610',
        '2018-02-16',
        77,
        'Jamey',
        3195.28,
        'M',
        1,
        '33729761401'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '45995639900',
        '2014-01-20',
        78,
        'Ahmad',
        5698.16,
        'M',
        0,
        '47569280671'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '36216705380',
        '2010-04-09',
        79,
        'Marleah',
        2774.67,
        'F',
        0,
        '34833602781'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '81689777470',
        '2006-11-23',
        80,
        'Ami',
        4926.46,
        'F',
        0,
        '35089590751'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '99876120860',
        '2012-12-04',
        81,
        'Whittaker',
        5979.79,
        'M',
        1,
        '47188144971'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '17227572230',
        '2004-07-23',
        82,
        'Murry',
        2835.03,
        'M',
        1,
        '90832170081'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '97327605670',
        '2016-11-20',
        83,
        'Avictor',
        1861.5,
        'M',
        1,
        '81244554611'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '75641966620',
        '2000-06-07',
        84,
        'Georgeanne',
        4922.36,
        'F',
        1,
        '96030447041'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '70166894140',
        '2014-02-19',
        85,
        'Goran',
        6063.82,
        'M',
        0,
        '86713322171'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '86859605100',
        '2013-01-12',
        86,
        'Jermaine',
        2999.54,
        'M',
        1,
        '23783705701'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '29258636360',
        '2021-09-17',
        87,
        'Mozes',
        2962.09,
        'M',
        0,
        '58560937501'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '26494704160',
        '1999-03-21',
        88,
        'Tiphanie',
        5502.82,
        'F',
        1,
        '18642917841'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '27917837010',
        '2019-09-15',
        89,
        'Heinrik',
        4404.71,
        'M',
        1,
        '44544065731'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '75573158900',
        '2010-06-16',
        90,
        'Gabi',
        5669.73,
        'F',
        0,
        '98229104981'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '56999587960',
        '2020-07-16',
        91,
        'Freddie',
        3443.69,
        'M',
        0,
        '50118970661'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '84713281680',
        '2005-06-29',
        92,
        'Erl',
        4551.14,
        'M',
        0,
        '43774445401'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '22380084660',
        '2013-08-23',
        93,
        'Margery',
        5374.19,
        'F',
        0,
        '89368945221'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '92740010740',
        '2013-06-21',
        94,
        'Meridith',
        2803.71,
        'F',
        0,
        '81251317281'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '95061526840',
        '1999-03-20',
        95,
        'Madella',
        4848.1,
        'F',
        0,
        '31036246891'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '41867098070',
        '2006-08-26',
        96,
        'Farris',
        2098.83,
        'M',
        1,
        '77674517771'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '15874755760',
        '2004-08-28',
        97,
        'Marianna',
        5186.22,
        'F',
        1,
        '75062114151'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '92962318400',
        '2018-10-21',
        98,
        'Jeanne',
        6439.42,
        'F',
        1,
        '82873349811'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '51386043950',
        '1998-10-28',
        99,
        'Johnnie',
        5939.25,
        'M',
        1,
        '34777138231'
    );

insert into
    `funcionarios` (
        `CPF`,
        `DATA_NSC`,
        `ID`,
        `NOME`,
        `SALARIO`,
        `SEXO`,
        `STATUS`,
        `TELEFONE`
    )
values
    (
        '87361731060',
        '2010-11-22',
        100,
        'Dolores',
        2675.02,
        'F',
        1,
        '17979061781'
    );

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (20, 1, 'Flori', '323 948 1314');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (76, 2, 'Maddy', '619 333 6342');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (54, 3, 'Ivett', '177 754 4228');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (56, 4, 'Sven', '494 772 8211');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (98, 5, 'Tess', '551 606 6154');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (45, 6, 'Gustav', '364 371 2591');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (68, 7, 'Shauna', '843 968 9191');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (10, 8, 'Itch', '505 163 4749');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (5, 9, 'Griffy', '148 176 4651');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (68, 10, 'Hobard', '843 956 3689');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (17, 11, 'Caren', '512 407 7176');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (79, 12, 'Martie', '309 332 3480');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (97, 13, 'Jacqui', '640 237 4379');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (52, 14, 'Ferrel', '740 902 1044');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (60, 15, 'Webster', '790 659 1800');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (11, 16, 'Ignacius', '699 888 5053');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (78, 17, 'Celie', '514 672 4186');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (12, 18, 'Rafaello', '201 518 8442');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (9, 19, 'Denis', '137 244 2959');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (54, 20, 'Rivi', '441 936 0228');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (51, 21, 'Erwin', '829 770 0444');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (28, 22, 'Guillermo', '248 818 7131');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (45, 23, 'Jamie', '222 275 8549');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (94, 24, 'Mara', '179 514 1182');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (66, 25, 'Thurston', '850 912 5595');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (86, 26, 'Guthrie', '458 134 5303');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (34, 27, 'Gilberta', '242 430 1792');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (23, 28, 'Kath', '463 864 3488');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (79, 29, 'Erna', '317 915 7764');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (87, 30, 'Birk', '379 624 4777');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (53, 31, 'Timmy', '590 563 9900');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (75, 32, 'Marsiella', '119 541 1656');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (90, 33, 'Puff', '109 345 3728');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (53, 34, 'Marcos', '530 348 7879');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (18, 35, 'Rosaline', '305 783 0881');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (50, 36, 'Rickie', '498 832 8372');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (51, 37, 'Andrea', '458 261 9698');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (95, 38, 'Estevan', '332 318 6038');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (8, 39, 'Paule', '749 430 8403');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (9, 40, 'Malena', '558 641 3356');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (57, 41, 'Donica', '127 648 3474');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (87, 42, 'Deanna', '912 884 5512');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (18, 43, 'Sal', '421 855 1956');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (92, 44, 'Hedwig', '832 371 6433');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (23, 45, 'Carey', '313 528 6382');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (83, 46, 'Rosy', '910 250 8029');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (52, 47, 'Torin', '152 486 4956');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (96, 48, 'Tannie', '559 759 2944');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (29, 49, 'Freedman', '186 961 7691');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (85, 50, 'Neale', '136 326 9465');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 51, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 52, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 53, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 54, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 55, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 56, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 73, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 74, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 75, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (99, 85, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (1, 86, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (1, 87, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (1, 88, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (1, 89, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (1, 90, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (99, 91, 'Junior', '46999756350');

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 100, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (3, 102, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (3, 103, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (3, 104, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (3, 105, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (3, 106, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (3, 107, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (3, 108, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (4, 109, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (4, 110, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (4, 111, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (4, 112, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (5, 113, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (5, 114, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (5, 115, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (5, 116, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (7, 117, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (7, 118, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (7, 119, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (7, 120, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (4, 123, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (4, 124, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (4, 125, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (5, 126, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (5, 127, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (16, 128, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (16, 129, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 130, 'Julia dos Teclados', NULL);

insert into
    `dependentes` (`funcionario_id`, `id`, `nome`, `telefone`)
values
    (2, 131, 'Julia dos Teclados', '40028922');

ALTER TABLE
    FUNCIONARIOS DROP COLUMN SEXO;