Received: from EUR05-DB8-obe.outbound.protection.outlook.com ([104.47.17.104])
	by localhost.localdomain with ESMTP;
	Sun, 15 Oct 2023 12:50:32 +0000 (UTC)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=X+QKIUWrxBDg5+ug9WE+pAtfRqyKay/EFtg3gKeots7aK4XOLNxSRlpkC56gTXFuA/D2JYKF+NEf4CWcFxhyBj3lc9lwtt+OZDuAqo81IFKCqr9v4sCI38bH4QEG9hT0XyKefmOGDRbevP5m9mewRPoDH/2g596tiwPtm9WO1AQzpvcudYwUCJlFJoYrPD/auNXQE7uMuIxtQnRjgQYm37ajRYqxS9SZfcpQ63qIyp/O+hIBlCAemIhS0APUHddcfGhB6+fWTQwmKH6UTxKHm5SB6OtQBU8XCp7YKygntp+kEom+Ci8MnNJANyvxZXEn9+ba0ci0UAioMtq3UtLyog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7rZlTy7BJzO4GpuKHqP8A1jK6/bm02y1FNLTu3EAH5U=;
 b=Wy1zATb+BCscAslqs8lV+O+eVdHqsp7LslGhHNjA86i61Or6OEPp4uHfzq+u2R6DDo/k6Oj2n+6/5tw8V0zrjDEHYpn9wgPJqWkBhAeHok+wSoiZjFc1wfn9QeuUpPuxpBi2ks298gGXoHGpnSGcySRPgtI4QnC7pgEXCEGVhdhsI6Yo0xxfhU/+MnjUnwpSuNc5WlJpJzCijhIx84xtAEuaCpu/Pfjygnk2xMuOud2tHokOga6WeBcQdaGsd/hhGYJuBj9sSMHg+8rAuCiTJcaNQJPn3WjWhba5lUQCQAFko/L5utk7I3bfrQCap1Nfz5J8OxFHoUzJdNlUoNshng==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 40.107.7.48) smtp.rcpttodomain=cynetint.onmicrosoft.com
 smtp.mailfrom=cynet.com; dmarc=pass (p=quarantine sp=quarantine pct=100)
 action=none header.from=cynet.com; dkim=pass (signature was verified)
 header.d=cynet.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=cynet.com] dkim=[1,1,header.d=cynet.com]
 dmarc=[1,1,header.from=cynet.com])
Received: from BE1P281CA0081.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:78::19)
 by AS8P192MB2041.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:5c3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.46; Sun, 15 Oct
 2023 12:50:30 +0000
Received: from VI1EUR05FT007.eop-eur05.prod.protection.outlook.com
 (2603:10a6:b10:78:cafe::a0) by BE1P281CA0081.outlook.office365.com
 (2603:10a6:b10:78::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.17 via Frontend
 Transport; Sun, 15 Oct 2023 12:50:30 +0000
Authentication-Results: spf=pass (sender IP is 40.107.7.48)
 smtp.mailfrom=cynet.com; dkim=pass (signature was verified)
 header.d=cynet.com;dmarc=pass action=none header.from=cynet.com;compauth=pass
 reason=100
Received-SPF: Pass (protection.outlook.com: domain of cynet.com designates
 40.107.7.48 as permitted sender) receiver=protection.outlook.com;
 client-ip=40.107.7.48; helo=EUR04-HE1-obe.outbound.protection.outlook.com;
 pr=C
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (40.107.7.48) by
 VI1EUR05FT007.mail.protection.outlook.com (10.233.242.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.17 via Frontend Transport; Sun, 15 Oct 2023 12:50:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RDdmwIZ4eMQ7OYbgC0xk5TncKBzKN/c7TFvWCzCaorR7w+gdHwSwoq/HA4J9fndfKZnpZOtJ/3+LIEkOtnhRcUjiro2vVeK7d7kCwsUyfglkS6myJN4pYm4Swoy/J9VbFE2Y+JtCO+a0igYwKz41ORwMIyEAoXOUR15n1PGsOAE+IsPfYwzrGDIj/g4cZP0nUWJ9cbgEVxLxn22Aq72fBAWqgO1v3JEFjpZTdYCl7Xwz/CIt5zlkXRDWY/7aJgC1hBhSoYwCeub8YDm+CZu3gXC3vbHZNXPhFMCW2g+M1wnnaRPkNuGif3AANMYX71dfkliJrAKNUXOugtfmmxohsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7rZlTy7BJzO4GpuKHqP8A1jK6/bm02y1FNLTu3EAH5U=;
 b=M+umGIx4wr2akbNCtFBs8ATZnH6awXLjUmed0xGy9Nn3VoRChlKdSO8HuWiopOIwLqfoiib0la1AHv3Q/Z9nXwAzA56d8tAZGkNHANjj+rQsB3yca8fYWNHlvX/W12WyXobAVA/v3KwV5zoITMLotjlHF+AgQQ7Zc+zeG2l9ylEhUMg0lt4DeskxYaXfdGIBDXndqGvQrcrvqHpYwFqUcfl8eseOjfur6gjXcmr1yTbxq9nP6G3alLDbTfJ+fX+NEZsCHn4rSDN5eZ4Qwlzy4AlrFLfLY5VC2tjsmbksjRbEzmd93w2W8j6boGBIQbTcN2v0nTIJBQPYtdbJnY+VEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cynet.com; dmarc=pass action=none header.from=cynet.com;
 dkim=pass header.d=cynet.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cynet.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7rZlTy7BJzO4GpuKHqP8A1jK6/bm02y1FNLTu3EAH5U=;
 b=gYiSwv+npT+FEkfVFZPCIv2aVDZwZGvPHTl8z2cfo/XhbmTYydGCcKud/4JqhMHRLRM0Tyx1zbCeRFqDWdqFQQZbrlC+9BCxKbavGbDFv36XY9DzpzPIfwUHUfrbe4Rk/FVWAsDjS3BPwCjXS1BMujsMlxywh3S7AXAzWGarBoo=
Received: from DB9PR01MB7323.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:218::22) by GVXPR01MB10617.eurprd01.prod.exchangelabs.com
 (2603:10a6:150:151::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.16; Sun, 15 Oct
 2023 12:50:28 +0000
Received: from DB9PR01MB7323.eurprd01.prod.exchangelabs.com
 ([fe80::b0aa:3c0a:93ab:5d1a]) by DB9PR01MB7323.eurprd01.prod.exchangelabs.com
 ([fe80::b0aa:3c0a:93ab:5d1a%6]) with mapi id 15.20.6886.034; Sun, 15 Oct 2023
 12:50:28 +0000
From: Yuri Khomyakov <yurik@cynet.com>
To: "eyaltest@cynetint.onmicrosoft.com" <eyaltest@cynetint.onmicrosoft.com>
Subject: Sadsddas
Thread-Topic: Sadsddas
Thread-Index: AQHZ/2YkydPn+qIlN0e70WNCSR/nfg==
Date: Sun, 15 Oct 2023 12:50:28 +0000
Message-ID:
 <DB9PR01MB7323D6687A7373B6F0B13491ACD0A@DB9PR01MB7323.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cynet.com;
x-ms-traffictypediagnostic:
	DB9PR01MB7323:EE_|GVXPR01MB10617:EE_|VI1EUR05FT007:EE_|AS8P192MB2041:EE_
X-MS-Office365-Filtering-Correlation-Id: 64222161-5e2a-42b0-c5e4-08dbcd7d500a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:
 D37f86XdSKauqfBqdPjd0qnPn7ogiN+fs1VHN0rLymBJYicxSb9iCeFJ1r5TpmPfACRtORuUkhT5gpC77RndFGyHC+94WGjB1fn9R3Lmfw07i0pxtfjpA7UYbgCy55bxXNE+IJOfblPDKSIjJxGnjNk2ZhMuApU/6/igtzkHUipZFIIXLqwImKrTTlXuVrKvn9/KYZR9IZr6JoI4Kp9KMlKRfWkAGwx9fcTK0rsUhnivw2QM7fQsssn6MWhQfj4uJep4OO2Mj4wXDbKk0qfARlaFTTyNaNmtP8MKvzkeVKdlTDWiq09sVn5tNQfX41jgrSp3nbAEf9KCKJbw63/ipiq01NAKnd9RoBpmImPbRHK3KU5NSY2tmFaShUG7wOWiUGbYzOmo9K3sJS8XEEB0fAAbYSLpPowHiwUZxbcKzskpxD/wyZh1nWf4q3O5sj+46cQTUkcAae0MPzu20WZwjYxRB7fDDAi4Hn+Y+azgBggG/mPn6wA7f4cBbTtxmaals75HTjt0eMZHa/+oBXMvedoiBpVBCUURV8dQQixUro+N6nMxshmwOlj7rcgfRWxyCL1qFcQ8vd9JPledyxn0knzRYw5jn5tskoL9w8W6jFHO/uLOwNIJHhvTNCcW3evv
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR01MB7323.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(39840400004)(366004)(376002)(346002)(136003)(396003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(478600001)(71200400001)(76116006)(66946007)(6916009)(64756008)(66446008)(66476007)(66556008)(6506007)(7696005)(9686003)(316002)(8676002)(8936002)(7116003)(52536014)(296002)(2906002)(5660300002)(41300700001)(558084003)(33656002)(38070700005)(122000001)(86362001)(83380400001)(38100700002)(3480700007)(55016003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-Original-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-Original-0:
	=?koi8-r?Q?4BFTLpMjNzhvwp5d16V4YW+srzxGzqyEfgfSEoylyYIK1j7xoT9d1dgzcfhySY?=
 =?koi8-r?Q?AwenWHxTJQKMoWYsJRLYODJjzzFSbvKPoBPZ+LZvyoP461XHZ2P7JpDJAgVObH?=
 =?koi8-r?Q?PDZFf6MHN/4IS9y2giDRIex++BZCSa0Wwd0YbwvB71UfsnSbxoB4DtISyWXX4e?=
 =?koi8-r?Q?U8QSwA/MJwTaJ9O1GUfgJ4EObCFS62D8kaZ0PQjV4EK7yToNafcP5Vq/vwaMyY?=
 =?koi8-r?Q?PbAd3AYuHI+VcZOziI7tLMqEvmiXCsiKGugD2ms3YjLCvpuyhZWoJ0G+FPoqsW?=
 =?koi8-r?Q?vlhwaP5vYcEp65hueNbM2+GyeOgDy2qYieN4W13Z98uFkZpDPpocJkzK7LBKrq?=
 =?koi8-r?Q?2gz4glYHVwoxNWYR3LFpOq9+qxNuMQpOMShk3tsfxWL+L2uMG2j2tRNS65bbI1?=
 =?koi8-r?Q?d0x6qyShPB8lFdZUEaoyaSibdNlz0BLSVqtFsMp9cDHdVGgwtmmlrqD+JUdqGs?=
 =?koi8-r?Q?+P9wEw2Gy8IJymP/Gc/32Rh0h4f26w3hJaEbqHi7bQj0InDw8PstHTc9ZKLmlb?=
 =?koi8-r?Q?wbH5xBICPUoZY8IsI9ffMPprnkKqn8bPFvbcR6WXECq0Ca8UCQTNv7DgPdAC3c?=
 =?koi8-r?Q?7co2PF8ALW/LqII0x+elqRuS0v57A2txHwno+0lsbdX0uEcISZpLNKpOhpLiEf?=
 =?koi8-r?Q?Diu6zkzRGjd7t/d+YiUYmQXaFPx9nEAGJTGfr5FQcbJTlI2aXO66sKaz26iIgP?=
 =?koi8-r?Q?Sdd0jkFh9w3DuEn5WaC+lzP8vbdhlTvzuKy4Y5mKLWoneCs+tGjLROeNP5yMRC?=
 =?koi8-r?Q?bd6JZllWH29ty2L9qDDQ25H46ZL9Xgn8FF8z8QnOgktJgKBlP65fn60MaJzAGN?=
 =?koi8-r?Q?2YpE08kO+o6+oVZHFu5p69aBY6OVFF/rFG0xsODlZnOAElu27W1yIC5H7dnZnw?=
 =?koi8-r?Q?bzv00+atQVnhheqFHcMZkasc4X8lq3xb6xCNgmwVJSt9amxxt3t4ykUjoilZ6t?=
 =?koi8-r?Q?ECW/RIwXov6pgoUKeOv8mZEIFQqZdQFqX/ee/pa4d9LlYsALdSVbBXVyPXRB7s?=
 =?koi8-r?Q?hHCDxtwW6VUrKW4cslZjHwKbvAkoZu5st4KdhV5Ust743cFDO6G5Stg1t2u71l?=
 =?koi8-r?Q?kn3Sei7DCZdZraGYkwWIbSrm/jTVpkIthWlcOKwdufiPu9lweDvk0QmDxyZwcO?=
 =?koi8-r?Q?wAirPCSk9ttHnJ4aWI3bKKMQufqZdXoOtQ1MgSFctJJyHo/SJKWT/1aqTWW11P?=
 =?koi8-r?Q?6k8kjYOSR2cPwsk45xXvTwjNBQ/1kI52o3SAGOEs5BP/EHW865z4U8EFrAL7U+?=
 =?koi8-r?Q?CQe5F8seTUd96RnwAKUjNMPCpgZGbPyWlc+GgDDgYZP+XpqF+oR/WW5pj9OsYh?=
 =?koi8-r?Q?/v/y6pCmVqDmGAD8DA+9DGsDcg3djAJO1up3tOnvzAdyg4++E+3TiCOze41Q0h?=
 =?koi8-r?Q?wVW5MRo0CM7vozwEfoBh5KhNjiZDOX2LutC27cFKkxEhd0pyk4c79SpRQyU432?=
 =?koi8-r?Q?a5TZyJPkCBS3CzYjj1/GOfydUX/qayr+P79hOG4CxSfTAsagGQYWY/51NftKIZ?=
 =?koi8-r?Q?A4ZaarptwCjseZjWqcDLpr5xcJsgKBYQnA4BWazH5dHL5zh7DBmbEbSuOTQlAc?=
 =?koi8-r?Q?f72mn7ljdsj4+N9z4JH+QD+KdwSddErRDqfsauHWdov6xn/hDxPKKL0y8HrJzL?=
 =?koi8-r?Q?wS0H98YQ/YiQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DB9PR01MB7323D6687A7373B6F0B13491ACD0ADB9PR01MB7323eurp_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR01MB10617
Return-Path: yurik@cynet.com
X-EOPAttributedMessage: 0
X-EOPTenantAttributedMessage: a84d933a-e471-4128-99c6-d3652501a6a6:0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 VI1EUR05FT007.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersPromoted:
 VI1EUR05FT007.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	6b7d1280-6f7a-47e7-939a-08dbcd7d4f1d
X-MS-Exchange-AtpMessageProperties: SA|SL
X-Cynet-Tenant-Token: ea0859f9-f30a-4a54-beaf-669eb9eff12e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	=?koi8-r?Q?OUOett1rFtd/xB7UeJZiUhOrkN9KMLLR9QmKlkjVpzCv1/drBTGmCcOHA0STUY?=
 =?koi8-r?Q?xUB7nztdoYoDxyfxu20FZ23MLr7jd4smfuH4gPSlqVKwwXHPQQftyURx3BjmmD?=
 =?koi8-r?Q?9k+drj2sRSPmD2J0fnh/+Cba3UqyqGwv1PUKDkehVqlXNLFN3zHjtQmKT4Nm4v?=
 =?koi8-r?Q?JmwzzT5QKCZ/q1dCbvbRFvNJ+AhKd1lgBC7+/FKQk/cmjz1ew6B1l48Eg+Lav9?=
 =?koi8-r?Q?U8s0IT1pCyOTekI8eQwi2cxzirKdoZ4jRuvUulqGOcISKtYDUj1NGNYfHHj/cr?=
 =?koi8-r?Q?yb7xFzPZq4DW1AK0L0LZqfdzwxYci50jUbU7BtPAwXAu0RGRdNaCzJTIK5hKUb?=
 =?koi8-r?Q?gAmhpnxTdbnVjYEFeFHGw7AUUuTKrMDIKxys3t9oaY18Cd6hYiSjFBTR7aTkDf?=
 =?koi8-r?Q?C5lNM5m6kvT+khoyRWhsAssCk2bhXyp2IKt7u+wVTAGBtjbwIAdICKC3rzqEEv?=
 =?koi8-r?Q?JPGKv70QIAopYOKuSw2uYuurs2b5eBEVdzRwhYu4uPuK8eWK/hil+goAzy/CtN?=
 =?koi8-r?Q?GfYFgw6C1kCrSwtxlUXBin1y/cEgl1RUrn59KKM0gK3lfpXJckrIYfc+cERDai?=
 =?koi8-r?Q?clO5ebis3SRfKH0C5Cn27KXVYrGz/GYTU01IEjR15jZAYq8j0ae9f+XBAc1BIA?=
 =?koi8-r?Q?ff1ZkvleubUoRy/JYY0v7SGxE+zaRFCYbBT909fWAGuz8gHF0CVNLoI+LCWk+Q?=
 =?koi8-r?Q?c/9dyPDGwoaDY4H/N4LnEkm9FhVRdEOFkgtukvvFo68fymWKwJC4sGduOnVDJq?=
 =?koi8-r?Q?y/zjgEQ6PodXC7ot4JSKlhD/kzWcXsRGNpmqKn67zdT21xQe/FsYR4f0VEa2mc?=
 =?koi8-r?Q?4rpFo+JHsWRun5iYXt8aPzGKG8BFD80hvVRgkLqnNOV2TSQdCm10RZNWBa9IfK?=
 =?koi8-r?Q?SO22uW+/coomT8r6QKgNl5dLEEhIkiF6uUVtZmxIMgYOcY5UpBF7V8kfU1WOse?=
 =?koi8-r?Q?CwWDGAx/F1n332vIGDonMVwtyMPCsPoKt4MSUmosfQXyBt8gnFH18FB5ugUBnl?=
 =?koi8-r?Q?6/m6Ogi0bxJuJL7EZlYAzYfdQkrkreMy1CmWF5VHvpu80v30pJpwN3wQQkBZhl?=
 =?koi8-r?Q?a2OBK2GEp4/+GiDURA5E+x73onGeB7/nGoay/k2tRV4gBplIMADeSNkXtBxyQl?=
 =?koi8-r?Q?RAWMyjRIVIADfJMQIpmgB+pGyIL3OjwdreCgo+MnhZWmzkp3UgGjxR3KEfKOc1?=
 =?koi8-r?Q?3/E20gOhbnd8fsdVS4iP4QtbtnJIk7w3obHQE+u0PKTLMieDbREcgrR/HpFozG?=
 =?koi8-r?Q?SqOIHnDAQZSEWHQNkwhgU/KrSp9uDRMP0gNaNcmnfiPOpxzgXvF6r46zq4nuUU?=
 =?koi8-r?Q?K9bKTLmhlqR+ZZJqmF9O1R1MKbW2IZWt31CJDwda+mgxrx4LsW9PhtB9A0I5JA?=
 =?koi8-r?Q?HjEi+zOT+Db/5tcQTo86VbzIIepNzUsbwzGFrxOZOEnevYjh56CpK0FouWu1Gx?=
 =?koi8-r?Q?8h3ySLPY/Fgp8icmv79xw4G8jDVKUDX3bjlKle4DWqP4WFGjubhKCK0pPQpItr?=
 =?koi8-r?Q?JHesdf6S8qYOl1GSs4hIHU1CAJhzt6tvG8uU5SN7NfuXbKQh/G?=
X-Forefront-Antispam-Report:
	CIP:40.107.7.48;CTRY:FI;LANG:en;SCL:-1;SRV:;IPV:NLI;SFV:SFE;H:EUR04-HE1-obe.outbound.protection.outlook.com;PTR:mail-he1eur04on2048.outbound.protection.outlook.com;CAT:NONE;SFS:;DIR:INB;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	9IEl3BmLKONaDoc4cMkxuPDJYFZ+KFrHAZ/lidn9NRO4SOvjRXSRV9EtlLJF2KkVjiHx+hvbrRbAEt+saeAl2C6ng/3pAv5OT5rlA0vLvUO71053rGYue83sI2PHZlZDsOC41KSYco75iyLl5H8wWo+rrUZg5zmyDsm9hdtXMyfFKyV0cYAUcqzJWvZNUA6A5fAu7v1h4GaekAjyN1mlSVzGBavKFZnWrOpdILxfvrmcqhWvcYdIJr96bQ4NaUuxLn3zFrNu553Ej5yjBbSjOcW7K77B7Lg81MFUu27iXQOXnP0GZ780VO4H70alJygG2Yi+d4V0zxEMLzFoDA1l0fRepZHtTlCxQjPfzTXY+17ZpLHcyK6pFgCsrAb09hp4fkQCQ0duEMvUzeGKDz+dG44wSncoIWadmHWqf9CoG69Sx37cPcdBWKRGQ+a3ljYhTYL04qcv+GBKhoYgcnPXOkwVLMlrJ9ioQcLfEakCUUXSKlTh9g2AbpST+wDf3qKA1ZohJd0cC/9ZUSd8CcC/+g4GV4qPY9DyVe/C+vFDad26tuAngGp6Q2pldqnSYVDrKjOtbzbv6ND2XQ/FB+zatadc69cyWwnaebbBAWryJ1DKUTHX72LMizhIezXAGS5czp/b+dpPmTtF9oPDDQxzZ3xAu/pzLXZ+2hJg8i745RHP8XZIALMv3rMJrWEACB0YwwYjP5c8xLe9xxG7bUfk7Yo9GIPcXp6M6HgsJBZAyXMfpKKZQVf8NUoh8HsacR5Gq0R9Vrur5uVq05F0N45cBw==
X-OriginatorOrg: cynetint.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2023 12:50:29.8671
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 64222161-5e2a-42b0-c5e4-08dbcd7d500a
X-MS-Exchange-CrossTenant-Id: a84d933a-e471-4128-99c6-d3652501a6a6
X-MS-Exchange-CrossTenant-AuthSource:
	VI1EUR05FT007.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P192MB2041

--_000_DB9PR01MB7323D6687A7373B6F0B13491ACD0ADB9PR01MB7323eurp_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable


[10/2 1:49 PM] Michael Kabanovsky

try this

=82=80localhost:1333?u=3DZTg4ODE2Y2I4ZTBlZDA0NGY1MDRiNzlhMjVlMjgxZGNlOTBjNz=
c2OTQ4MWQ2MDk0NTJhMGExMmFiNmE4ZjJiMWZiMTM4OTFmNGI4OWUxYjAxYg=3D=3D=80=83
=81 localhost:1333?u=3DMGJhMzJjYTdhMDQ4NmRmMDUyODk2MjNjMDUxYjJkNDdhYTU5YmQ0=
Yjg5Y2FlNDYxMmFkOWYwNDk4MDk0MmQ2OWM3MjExZTcyYzc2YQ=3D=3D    =81
=84=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=85
=82=80localhost:1333?u=3DZmMxZWI4MTE5MDUxMmRkNThmZGIyYjZlZTY3MjJjYjBiNGIxOT=
NjODZhZjNkMzE1YzBkN2YxZTdlZGQyZjlkMTA4OTdiYzFlNzFjNDE4MzdmMQ=3D=3D=80=80=80=
=80=80=80=80=80=80=83
=81 localhost:1333?u=3DNTFlNGY1MzJlYTU0YWQzYmI4YWUzNDQ4MWJiNTlhZTg2YjNiMWZk=
NjAyYjgzYzA2NDNjOTVlZTc4ODE3YmNhYzBmY2NkZDVjOTc0MTE3M2ZjMjQxZWM1MzJlZjA1NWV=
jZjA=3D =81
=81 localhost:1333?u=3DOWFmMGE4NTBkZDEwZjdhMDU2MmFlMjAxM2M3ZTAwZjE4YjYwMmE3=
OTJiOWUzY2E1ODc5ZTlmODIxMjFlNDNhZTdjOGU3YWU4ZGQ0MjA1MmFjYQ=3D=3D         =
=81
=81 localhost:1333?u=3DNDJhMjI5ZDgyMjBkYmIzODJhZmQwZDc1MGNkMzM0MGFlODU5ZmQ5=
YTA4NzI2MWQyZmFiMGNhMDU3MjI0NzFjMDNjMzZhYTllOTViNzJiODJmMDFhNTc=3D       =
=81
=84=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=85
=82=80localhost:1333?u=3DYTlmMTIyMTg3YjlhMjlkMTA3ODQxODY1YjlmNDljZThkZDliYW=
Q4YTQ2OGQwYjc2Y2RhZjU5YWVmMzkwYTVlYmRiMWYzMGMwNDI4MWY4ODAzMw=3D=3D=80=80=80=
=80=80=80=80=80=80=80=80=80=83
=81 localhost:1333?u=3DYTkyOWU0YjA3N2Q1NmViMDhlZDM1MWVhZTcxOTljMjFiM2IxNDEz=
MGUyOTVkMzM3YWE0OGJmMjU4ZWIwNzVlOTg1ZjY1NjgwNjQ5ZGIyYmU5NzdlNDAzYWZkNmZjZGF=
mYjA3M2NkMDk=3D =81




--_000_DB9PR01MB7323D6687A7373B6F0B13491ACD0ADB9PR01MB7323eurp_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r"/>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)"/>
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:-apple-system;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"en-IL" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p style=3D"margin:0cm"><span style=3D"font-size:10.5pt;font-family:-apple-=
system">[10/2 1:49 PM] Michael Kabanovsky<o:p></o:p></span></p>
<p><span style=3D"font-size:10.5pt;font-family:-apple-system">try this<o:p>=
</o:p></span></p>
<p><span style=3D"font-size:10.5pt;font-family:-apple-system">=82=80dnsCach=
e.host=80=83<br/>
=81 scpxth.xyz    =81<br/>
=84=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=85<br/>
=82=80dnsCache.host=80=80=80=80=80=80=80=80=80=83<br/>
=81 research.cynet.online =81<br/>
=81 slb.cynet.com         =81<br/>
=81 link.sbstck.com       =81<br/>
=84=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=80=85=
<br/>
=82=80dnsCache.host=80=80=80=80=80=80=80=80=80=80=80=80=83<br/>
=81 act.qasimforcongress.org =81<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p> </o:p></p>
</div>



</body></html>



--_000_DB9PR01MB7323D6687A7373B6F0B13491ACD0ADB9PR01MB7323eurp_--
