Received: from EUR04-DB3-obe.outbound.protection.outlook.com ([104.47.12.57])
	by localhost.localdomain with ESMTP;
	Thu, 28 Sep 2023 12:17:16 +0000 (UTC)
Received: from DU6P191CA0049.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:53e::8) by
 DU0P192MB1700.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:3bf::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.28; Thu, 28 Sep 2023 12:14:24 +0000
Received: from DB8EUR05FT012.eop-eur05.prod.protection.outlook.com
 (2603:10a6:10:53e:cafe::cd) by DU6P191CA0049.outlook.office365.com
 (2603:10a6:10:53e::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.35 via Frontend
 Transport; Thu, 28 Sep 2023 12:14:24 +0000
Authentication-Results: spf=pass (sender IP is 209.85.217.47)
 smtp.mailfrom=gmail.com; dkim=pass (signature was verified)
 header.d=gmail.com;dmarc=pass action=none header.from=gmail.com;compauth=pass
 reason=100
Received-SPF: Pass (protection.outlook.com: domain of gmail.com designates
 209.85.217.47 as permitted sender) receiver=protection.outlook.com;
 client-ip=209.85.217.47; helo=mail-vs1-f47.google.com; pr=C
Received: from mail-vs1-f47.google.com (209.85.217.47) by
 DB8EUR05FT012.mail.protection.outlook.com (10.233.239.1) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.19 via Frontend Transport; Thu, 28 Sep 2023 12:14:24 +0000
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-452951b27d0so6094258137.2
        for <eyaltest@cynetint.onmicrosoft.com>; Thu, 28 Sep 2023 05:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695903263; x=1696508063; darn=cynetint.onmicrosoft.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xNS/EtuJJpNcLXzhE8ZnIzx2Vv1FOHI0aYO9x3Y/r7E=;
        b=Hcwwq5OTkZvy+bmWVv54q8ETk4XixAyaVPi+JpN84w+f4zW4qAMDU8bk7pXtP0zsdH
         BiIrkm320NP3j/GWfHORRr5FDoxZblaVDe0apbyNJiSxPm4LcAI1wGCdfex4uEEPxJ1d
         xKiH3U4n1BAvNHdJ8/hL9J7Yxq3qHqXQ8tsNd/XGTFzi/Cl58Zc37Ys8OZKZYmVeNKnx
         loIiHoJR95VKLjFdxSOx4giKtNYnUQFyzh52Xo+cqOqlww9RQ0N/Fl4b26xwPjTvN1me
         sV5BsYUkoOIAErmSjpTRRHof4g5HH2uDM7VdDTOdm024nCVKrBGZl6BvoOdn1KZN+LxZ
         wyng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695903263; x=1696508063;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xNS/EtuJJpNcLXzhE8ZnIzx2Vv1FOHI0aYO9x3Y/r7E=;
        b=i06H/jx12lVhSrxsx6Jjeqpq9UeJC8d6cBSea6MckCWLqNonwNQ0AX4tRsNokC7pg3
         rwinSogDMJ/oYTIPNyk7Od+lvQVdTwvP+rACT4GCRvvdfpP7ZxwuNIlPDgh6NkBepp5M
         h33/YFT2yP/Q6ytrZVWWwXKMUK5EK3itEiACRzYv33RAY28ujOcYTpH/QhHtjK/srg+E
         0sH6OG56dwlT1AEbtwaxxILxKnvDHwYzMHQoYejxNlgZ+wGlJTnb6kmD63UxFMMlE3nt
         zY6CQyHRMmaWOjC/luC1l+Mi6K7mhz0S1zlbX0hXNqc76PVAmrhsp7MBEgoRZ63uzEcA
         /nRA==
X-Gm-Message-State: AOJu0YyFDJYh5VHZ+tRUgE7FJcZEsdOp3KOdgyvcMAHZ/0/FLnfF70kY
	k0D/pvWhp6aPPvWW7PaZKGkkgczN8+8LBp7QLZTpQ7m0ETy6+w==
X-Google-Smtp-Source: AGHT+IEgtDsgd1DP0lT6H4F/2WvfebnpX7pU2xtcDk3V8Zwi3d4ZHrUT4zwwyX0BeNlBJH55M1d7C/MFs89H5EQ75B0=
X-Received: by 2002:a67:e3d2:0:b0:452:6234:ed3 with SMTP id
 k18-20020a67e3d2000000b0045262340ed3mr878673vsm.22.1695903262832; Thu, 28 Sep
 2023 05:14:22 -0700 (PDT)
MIME-Version: 1.0
From: Yuri Khomyakov <yurik1776@gmail.com>
Date: Thu, 28 Sep 2023 15:14:11 +0300
Message-ID: <CADrc17B0T8UKJ+BH0bT1RQCGL-02vdrnk44+CD26FvQay0s-5A@mail.gmail.com>
Subject: buffer should not be partial
To: eyaltest@cynetint.onmicrosoft.com
Content-Type: multipart/alternative; boundary="0000000000008dfe8706066a3fbb"
Return-Path: yurik1776@gmail.com
X-EOPAttributedMessage: 0
X-EOPTenantAttributedMessage: a84d933a-e471-4128-99c6-d3652501a6a6:0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB8EUR05FT012:EE_|DU0P192MB1700:EE_
X-MS-Office365-Filtering-Correlation-Id: a528bb12-eebc-45df-350c-08dbc01c744e
X-MS-Exchange-AtpMessageProperties: SA|SL
x-cynet-tttt-token: ea0859f9-f30a-4a54-beaf-669eb9eff12e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WFdLYzlLVjR2UkdzbUp2bXdOTEdjUHVGUzc4dWtQSEhNVjVmaHBlK295SVJP?=
 =?utf-8?B?SWg4eWpFM0ZWc05DbG11SjMxY0RqTEFiZ2hnNm9tQm05c0Q5eGpOVHk0TWdO?=
 =?utf-8?B?U3BMMGdIOFAvZXcvdnZyM1hiWkNyQnhzRmhXT25PYk5zUko4SGFIZmdTaUdm?=
 =?utf-8?B?ZE1HWXdUV0Fmb0RWa2ZQNk9pZnl5dDdTRW5nWmxIaDBuS1FVU3YvaGdhb2ZX?=
 =?utf-8?B?ZStlWjgwWFEvdHQvUXZVYkkwQi9XTTJIS0pmTEpwZnQxRW54dm1XWkg1THE4?=
 =?utf-8?B?N2crbUFuRU1SeVpudlFkTk41NTA4U0hudTM4bkVuZEg1c2xCaVFWM0t2Q1dp?=
 =?utf-8?B?Nk1XK04zZU8zTzlWT2hWQnl6cHpPNEJPdDNuTHl6ODdyYzAydTR0UHJVR29k?=
 =?utf-8?B?ZU96S1BPYlpLTWV6c1hieml2ZWx0ZFhNMmRMWGVRQTByUDcxRmVCWjZhSWRE?=
 =?utf-8?B?YXB0emFJbytabHM0T1FyZnZoWFNjK2k3K3ZtaktJYTlxVUQ0RzlDaGdUbUZn?=
 =?utf-8?B?RmtEODhhOE1TZit3ZEV2RERBdUFxZ3M5dUs4OThSY3diNVMyRFRaYjQrT20r?=
 =?utf-8?B?ZFM2dmtJM05jR3p3ZHB3WVA4aDIxa2JQaWhraWtzdDV0M3NRUG9TTEpYdEg5?=
 =?utf-8?B?cnY4S2FzQS9tT3drTTIzczJxZTV3SjdHeVVWNE5paDdJY1NXLzBQNDhaNDNk?=
 =?utf-8?B?V1E0T1Fpc0ZIcnN5QXFjNk5nNWw3ZTlJc05kTWtSbElMUDN3TVdhVjB4U2d5?=
 =?utf-8?B?WDF4dmpscW05MFl2UWpjT2ZRRE43ck1oVTZEWFNJM3VFR1hKaTRIVHRCbWFZ?=
 =?utf-8?B?Zi9KblN1R1QwcEdTZkZmMTdRaW1oMUpBU2IrWE1pL0VEL2JmSG1yNGo1UXU0?=
 =?utf-8?B?SjJhTS9NWHZtRGxQZmxpVWF6Z05LWk13ZUJSSEFnc1VJQVZXeWZ3eWJ4eWha?=
 =?utf-8?B?bU01c011SDlZcUQzNmRmcHpqdUtzbWdyQU5IZFlCN2MwclJOdHVoSmJ3Qk1o?=
 =?utf-8?B?VmNFN09Xc0trZ2hVS2U4V3A4UnB6SDJaa2VSbzBnREJZS1dvdEFpRzBTdzBq?=
 =?utf-8?B?T0IrMnRDU3U4UTRYYU53N0xWL0k1bFpVWHVGSllTeFd0ZTB0ME9QL2NacktJ?=
 =?utf-8?B?dXpSNmFra0p2aWRMOFEvUVpmRVdFNVdjTzY3YVkzblN6aDhwa2lFNzluWlcx?=
 =?utf-8?B?WjBKVHdkMDhhN0M0T0FPQzZ1V0EycC80UDBVZFRiREk1eWZUbEFVY0o1SDQ2?=
 =?utf-8?B?TXlvUWt5M0thM2FXYU10YkRVc3daQ2dpbVlSaWhJK29XTG5EOHFZeW9KcS9l?=
 =?utf-8?B?L01vSElxalgralY3SENJZE16ZGg3dU5zU29rNk1Hck0vSnNXc0wvZkZsNzBC?=
 =?utf-8?B?dnpsMkJOcGpsb1RJYzhIb0RVL1VpZUdyRG95YUd2bU9TNkMvdHh5b2JZRDVx?=
 =?utf-8?B?UGxLekxxblpsSnkvRFlFNVJpZDhzdFUrYzl3U0gwUldoVy9QZ2wzZ1dXanhW?=
 =?utf-8?B?bThRY0RLNW5wYndrUk1Ic1drMmIyRXVlQTRNUGJTcC9lUUVUSVVGajNQVWoz?=
 =?utf-8?B?alhTNnAwYmprUmRvdm9FRjZDWHpHVjJkVVRiSkFiSXRPTGQwbWs4cStoVFVD?=
 =?utf-8?B?cmxxdDhjcHpka2FCWFlUcTVsWHZQeFltYUYzMVVqVXJUcWdLTmJWekNKM3VZ?=
 =?utf-8?B?T2JiRTdoS2F6ZnBDTWF6UGp4Y2l1dWdGclFiZmIydnM4aDNYWGRadXRMZFkr?=
 =?utf-8?B?MWNtYkxxenlwOGFtUFh3VXdMakVtNkl1WUNGTDRjSlliMGFNak5aYnplU1hT?=
 =?utf-8?B?eU94d1RScm0reDJQbVpNd3R6U3VRTnZmV2hiR3pXTzNNcnNISUJMOTh4VERi?=
 =?utf-8?B?eUxSRng2M0RmSFdSeFo5bXpLZkRrTi90SmxCb0x1V1ZDbGNVN0c0M0lLYVZk?=
 =?utf-8?B?UC8vQXEwRjAyeHhydTlpeWcvVUgxUERLY004NDBvSXF2TXhPTkgyb2VKbS9x?=
 =?utf-8?B?WS9ZYldmMmZwY2NISWlZeTgxTnR5QS9QV2ZGb3lST2lLcEtka1hwNWx2emhM?=
 =?utf-8?B?cWJZNzRNdFlPVUt3aVhLN3BSR0xDVDFyWERUdUhtQTRHN0hsYWRXaUtvdVRo?=
 =?utf-8?B?eTZyZFJPSHZhVjNXYTh6MUYwYVNBREYwbmdXeHByUUZnM0tHWjRKYnFmNDg0?=
 =?utf-8?B?TW5vQXVraGNRT0lzbVhnWElnK2gvSTdqNERiTVBMMGthV2x5dVYrSjI3cXE5?=
 =?utf-8?B?R3pPUno4VUxsMnhJZU5mNnVOTEJxZDFOMUk5eXFkcCtkUWFYSjdHY1h3UnRF?=
 =?utf-8?B?b0hjdUJZU0hucUpqQksyeDl5VVBRdE5SMXAyTzVTdXVQYnhIVWE5bnVNaEFP?=
 =?utf-8?B?ejRqbit6Ykt0MWliNDliYk1NdVB4OVpJOHA1SnpjbUJENGlmTTJVeVozSjVu?=
 =?utf-8?B?akhOR1NwWjJVc2JaSXIycUxmVlVKYWo0UlZ0bXhGWHFUaUUwVnIyWFVEWjlU?=
 =?utf-8?B?SGlSYlFRQU8wdnltN0RiSHJlcTFhY3U3U2NKVDg0ZERCUkhOYmorb0NHVy9h?=
 =?utf-8?B?UWVhNXhZNGxrbmlqd2tieER3MHpvT25rRGVQOFNXRTVGSXJUZDJHSHVKQ21V?=
 =?utf-8?B?aFFMWjhKZz09?=
X-Forefront-Antispam-Report:
	CIP:209.85.217.47;CTRY:US;LANG:la;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail-vs1-f47.google.com;PTR:mail-vs1-f47.google.com;CAT:NONE;SFS:(13230031)(6019001)(4636009)(269900001)(451199024)(8676002)(42186006)(84970400001)(16350225007)(6916009)(1096003)(76482006)(5930299018)(21615005)(6666004)(26005)(5660300002)(33964004)(83380400001)(336012)(82202003)(966005)(86362001)(356005)(15974865002)(166002)(73392003)(7596003)(7636003)(55446002)(109320200003)(57042007)(16940595002)(2998405003);DIR:INB;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	mL2rad+THtYaaxN6CfY9MDs56olWvoWEpCr/Tmy7Rf7VsnzjhrgInrTlLgSlaEmd5DTRBjFvMNwSkmWo1+P7t1cNR+iexANhN1jz+NuXJsfaS6NQgLN4VqHmvQVoV64LUM3lnDIuBk/+pmNHulDsdQhe7BAbrNP5BVNoSkxUZvFsW4B4utGxw1cAxpye+KD1aShdmZ6/5aeB+L+A/crmNpJGNwT/nruCKH4YIoOb2pGoZ2pbSIc7qaHh+UMFf202dbUySItlgwpTs/rsOIZ9n38djrnMCgh8AU2bTJXuutC/bucjz0sORN/KhI6S2V8AZ0soMVqhzHHnPZ0Zl4oSnxS3DLGzKdR8c04J7M9lwSix6hycsMh1ActLXD0S9G8riXxoDDwND2N+9u52H4ybY1uyLMWClxmvtV2C/0+QgVtIJG/5lJwStlxCIRlxliAWtLN2BtyVQMdSmJ+LWhZZ5Xh3sMmQCl6oIcE57KioVoJFlxZkABbJHVok960zAhtd0ehx8Yzj0WOb1HCTMCJjl04Xb5a0EnBKvxT8w8oJlwsP22mpVoi48/Ss/q49/PCJzgYJZvFT4DVAK/CtbvJEJ2V2VOPHHAVn0HjJq6bevUa2UG3Yit8Qp8718GuXnV6BciW6jnxBsYD38B6nIJNHIX3kQG1PSHeximZonTzfbgjgCOIyUgzNa/HzxBU79KKwU2L7JlJMsfJ+QQDd3U2Qe+N+1RCHqrYR9G2l9ZZtJ0fR+W/C6YrGzBwhK3rO/8kt4KMungmv/ePcrkziMn85IQ==
X-OriginatorOrg: cynetint.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2023 12:14:24.4550
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a528bb12-eebc-45df-350c-08dbc01c744e
X-MS-Exchange-CrossTenant-Id: a84d933a-e471-4128-99c6-d3652501a6a6
X-MS-Exchange-CrossTenant-AuthSource:
	DB8EUR05FT012.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P192MB1700

--0000000000008dfe8706066a3fbb
Content-Type: text/plain; charset="UTF-8"

Hey ma


The standard Lorem Ipsum passage, used since the 1500s

"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id
est laborum."
Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45
BC

"Sed
https://www.google.com.tr/admin/subPage?qs1=sss1&qs2=sss2&qs3=sss3#Services
https://google.com.tr/test/subPage?qs1=sss1&qs2=sss2&qs3=sss3#Services
http://google.com/test/subPage?qs1=sss1&qs2=sss2&qs3=sss3#Services
ftp://google.com/test/subPage?qs1=sss1&qs2=sss2&qs3=sss3#Services
www.google.com.tr/test/subPage?qs1=sss1&qs2=sss2&qs3=sss3#Services
www.google.com/test/subPage?qs1=sss1&qs2=sss2&qs3=sss3#Services
drive.google.com/test/subPage?qs1=sss1&qs2=sss2&qs3=sss3#Services
https://www.example.pl
http://www.example.com
www.example.pl
example.com
http://blog.example.com
http://www.example.com/product
http://www.example.com/products?id=1&page=2
http://www.example.com#up
http://255.255.255.255
255.255.255.255

shop.facebook.org/derf.html ut perspiciatis unde omnis iste natus error sit
voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
quae ab illo inventore veritatis et quasi architecto beatae vitae dicta
sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut
odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia
dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi
tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut
enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit
laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum
iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae
consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
1914 translation by H. Rackham

https://www.facebook.com
https://app-1.number123.com
http://facebook.com
ftp://facebook.com
http://localhost:3000
localhost:3000/

"But I must explain to you how all this mistaken idea of denouncing
pleasure and praising pain was born and I will give you a complete account
of the system, and expound the actual teachings of the great explorer of
the truth, the master-builder of human happiness. No one rejects, dislikes,
or avoids pleasure itself, because it is pleasure, but because those who do
not know how to pursue pleasure rationally encounter consequences that are
extremely painful. Nor again is there anyone who loves or pursues or
desires to obtain pain of itself, because it is pain, but because
occasionally circumstances occur in which toil and pain can procure him
some great pleasure. To take a trivial example, which of us ever undertakes
laborious physical exercise, except to obtain some advantage from it? But
who has any right to find fault with a man who chooses to enjoy a pleasure
that has no annoying consequences, or one who avoids a pain that produces
no resultant pleasure?"
Section 1.10.33 of "de Finibus Bonorum et Malorum", written by Cicero in 45
BC

"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
praesentium voluptatum deleniti atque corrupti quos dolores et quas
molestias excepturi sint occaecati https://www.facebook.com
https://app-1.number123.com
http://facebook.com
ftp://facebook.com
http://localhost:3000
localhost:3000/
unitedkingdomurl.co.uk
this.is.a.url.com/its/still=going?wow
shop.facebook.org
app.number123.com
app1.number123.com
app-1.numbEr123.com
app.dashes-dash.com
www.facebook.com
facebook.com
fb.com/hello_123
fb.com/hel-lo
fb.com/hello/goodbye
fb.com/hello/goodbye?okay
fb.com/hello/goodbye?okay=alright

Hello www.google.com World http://yahoo.com cupiditate non provident,
similique sunt in culpa qui officia deserunt mollitia animi, id est laborum
et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.
Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil
impedit quo minus id quod maxime placeat facere possimus, omnis voluptas
assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut
officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates
repudiandae sint et molestiae non recusandae. Itaque earum rerum hic
tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias
consequatur aut perferendis doloribus asperiores repellat."


Thanks

--0000000000008dfe8706066a3fbb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey ma<div><br></div><div><br></div><div><h3 style=3D"marg=
in:15px 0px;padding:0px;font-size:14px;color:rgb(0,0,0);font-family:&quot;O=
pen Sans&quot;,Arial,sans-serif">The standard Lorem Ipsum passage, used sin=
ce the 1500s</h3><p style=3D"margin:0px 0px 15px;padding:0px;text-align:jus=
tify;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;fo=
nt-size:14px">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit=
, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut eni=
m ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqui=
p ex ea commodo consequat. Duis aute irure dolor in reprehenderit in volupt=
ate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occae=
cat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim =
id est laborum.&quot;</p><h3 style=3D"margin:15px 0px;padding:0px;font-size=
:14px;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif">=
Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Ci=
cero in 45 BC</h3><p style=3D"margin:0px 0px 15px;padding:0px;text-align:ju=
stify;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;f=
ont-size:14px">&quot;Sed =C2=A0<span style=3D"font-family:Arial,Helvetica,s=
ans-serif;font-size:small;color:rgb(34,34,34)"><a href=3D"https://www.googl=
e.com.tr/admin/subPage?qs1=3Dsss1&amp;qs2=3Dsss2&amp;qs3=3Dsss3#Services" t=
arget=3D"_blank">https://www.google.com.tr/admin/subPage?qs1=3Dsss1&amp;qs2=
=3Dsss2&amp;qs3=3Dsss3#Services</a></span></p><a href=3D"https://google.com=
.tr/test/subPage?qs1=3Dsss1&amp;qs2=3Dsss2&amp;qs3=3Dsss3#Services" target=
=3D"_blank">https://google.com.tr/test/subPage?qs1=3Dsss1&amp;qs2=3Dsss2&am=
p;qs3=3Dsss3#Services</a><br><a href=3D"http://google.com/test/subPage?qs1=
=3Dsss1&amp;qs2=3Dsss2&amp;qs3=3Dsss3#Services" target=3D"_blank">http://go=
ogle.com/test/subPage?qs1=3Dsss1&amp;qs2=3Dsss2&amp;qs3=3Dsss3#Services</a>=
<br><a href=3D"ftp://google.com/test/subPage?qs1=3Dsss1&amp;qs2=3Dsss2&amp;=
qs3=3Dsss3#Services" target=3D"_blank">ftp://google.com/test/subPage?qs1=3D=
sss1&amp;qs2=3Dsss2&amp;qs3=3Dsss3#Services</a><br><a href=3D"http://www.go=
ogle.com.tr/test/subPage?qs1=3Dsss1&amp;qs2=3Dsss2&amp;qs3=3Dsss3#Services"=
 target=3D"_blank">www.google.com.tr/test/subPage?qs1=3Dsss1&amp;qs2=3Dsss2=
&amp;qs3=3Dsss3#Services</a><br><a href=3D"http://www.google.com/test/subPa=
ge?qs1=3Dsss1&amp;qs2=3Dsss2&amp;qs3=3Dsss3#Services" target=3D"_blank">www=
.google.com/test/subPage?qs1=3Dsss1&amp;qs2=3Dsss2&amp;qs3=3Dsss3#Services<=
/a><br><a href=3D"http://drive.google.com/test/subPage?qs1=3Dsss1&amp;qs2=
=3Dsss2&amp;qs3=3Dsss3#Services" target=3D"_blank">drive.google.com/test/su=
bPage?qs1=3Dsss1&amp;qs2=3Dsss2&amp;qs3=3Dsss3#Services</a><br><a href=3D"h=
ttps://www.example.pl" target=3D"_blank">https://www.example.pl</a><br><a h=
ref=3D"http://www.example.com" target=3D"_blank">http://www.example.com</a>=
<br><a href=3D"http://www.example.pl" target=3D"_blank">www.example.pl</a><=
br><a href=3D"http://example.com" target=3D"_blank">example.com</a><br><a h=
ref=3D"http://blog.example.com" target=3D"_blank">http://blog.example.com</=
a><br><a href=3D"http://www.example.com/product" target=3D"_blank">http://w=
ww.example.com/product</a><br><a href=3D"http://www.example.com/products?id=
=3D1&amp;page=3D2" target=3D"_blank">http://www.example.com/products?id=3D1=
&amp;page=3D2</a><br><a href=3D"http://www.example.com#up" target=3D"_blank=
">http://www.example.com#up</a><br><a href=3D"http://255.255.255.255" targe=
t=3D"_blank">http://255.255.255.255</a><br>255.255.255.255<br><p style=3D"m=
argin:0px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-fam=
ily:&quot;Open Sans&quot;,Arial,sans-serif;font-size:14px"><span style=3D"f=
ont-family:Arial,Helvetica,sans-serif;font-size:small;color:rgb(34,34,34)">=
<a href=3D"http://shop.facebook.org/derf.html" target=3D"_blank">shop.faceb=
ook.org/derf.html</a></span>=C2=A0ut perspiciatis unde omnis iste natus err=
or sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaq=
ue ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae d=
icta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatu=
r aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione v=
oluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia =
dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi=
 tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut=
 enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit=
 laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum =
iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae cons=
equatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot=
;</p><h3 style=3D"margin:15px 0px;padding:0px;font-size:14px;color:rgb(0,0,=
0);font-family:&quot;Open Sans&quot;,Arial,sans-serif">1914 translation by =
H. Rackham</h3><div><br></div><div><a href=3D"https://www.facebook.com" tar=
get=3D"_blank">https://www.facebook.com</a><br><a href=3D"https://app-1.num=
ber123.com" target=3D"_blank">https://app-1.number123.com</a><br><a href=3D=
"http://facebook.com" target=3D"_blank">http://facebook.com</a><br><a href=
=3D"ftp://facebook.com" target=3D"_blank">ftp://facebook.com</a><br><a href=
=3D"http://localhost:3000" target=3D"_blank">http://localhost:3000</a><br>l=
ocalhost:3000/<br></div><div><br></div><p style=3D"margin:0px 0px 15px;padd=
ing:0px;text-align:justify;color:rgb(0,0,0);font-family:&quot;Open Sans&quo=
t;,Arial,sans-serif;font-size:14px">&quot;But I must explain to you how all=
 this mistaken idea of denouncing pleasure and praising pain was born and I=
 will give you a complete account of the system, and expound the actual tea=
chings of the great explorer of the truth, the master-builder of human happ=
iness. No one rejects, dislikes, or avoids pleasure itself, because it is p=
leasure, but because those who do not know how to pursue pleasure rationall=
y encounter consequences that are extremely painful. Nor again is there any=
one who loves or pursues or desires to obtain pain of itself, because it is=
 pain, but because occasionally circumstances occur in which toil and pain =
can procure him some great pleasure. To take a trivial example, which of us=
 ever undertakes laborious physical exercise, except to obtain some advanta=
ge from it? But who has any right to find fault with a man who chooses to e=
njoy a pleasure that has no annoying consequences, or one who avoids a pain=
 that produces no resultant pleasure?&quot;</p><h3 style=3D"margin:15px 0px=
;padding:0px;font-size:14px;color:rgb(0,0,0);font-family:&quot;Open Sans&qu=
ot;,Arial,sans-serif">Section 1.10.33 of &quot;de Finibus Bonorum et Maloru=
m&quot;, written by Cicero in 45 BC</h3><p style=3D"margin:0px 0px 15px;pad=
ding:0px;text-align:justify;color:rgb(0,0,0);font-family:&quot;Open Sans&qu=
ot;,Arial,sans-serif;font-size:14px">&quot;At vero eos et accusamus et iust=
o odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti a=
tque corrupti quos dolores et quas molestias excepturi sint occaecati=C2=A0=
<span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color=
:rgb(34,34,34)"><a href=3D"https://www.facebook.com" target=3D"_blank">http=
s://www.facebook.com</a></span></p><a href=3D"https://app-1.number123.com" =
target=3D"_blank">https://app-1.number123.com</a><br><a href=3D"http://face=
book.com" target=3D"_blank">http://facebook.com</a><br><a href=3D"ftp://fac=
ebook.com" target=3D"_blank">ftp://facebook.com</a><br><a href=3D"http://lo=
calhost:3000" target=3D"_blank">http://localhost:3000</a><br>localhost:3000=
/<br><a href=3D"http://unitedkingdomurl.co.uk" target=3D"_blank">unitedking=
domurl.co.uk</a><br><a href=3D"http://this.is.a.url.com/its/still=3Dgoing?w=
ow" target=3D"_blank">this.is.a.url.com/its/still=3Dgoing?wow</a><br><a hre=
f=3D"http://shop.facebook.org" target=3D"_blank">shop.facebook.org</a><br><=
a href=3D"http://app.number123.com" target=3D"_blank">app.number123.com</a>=
<br><a href=3D"http://app1.number123.com" target=3D"_blank">app1.number123.=
com</a><br><a href=3D"http://app-1.numbEr123.com" target=3D"_blank">app-1.n=
umbEr123.com</a><br><a href=3D"http://app.dashes-dash.com" target=3D"_blank=
">app.dashes-dash.com</a><br><a href=3D"http://www.facebook.com" target=3D"=
_blank">www.facebook.com</a><br><a href=3D"http://facebook.com" target=3D"_=
blank">facebook.com</a><br><a href=3D"http://fb.com/hello_123" target=3D"_b=
lank">fb.com/hello_123</a><br><a href=3D"http://fb.com/hel-lo" target=3D"_b=
lank">fb.com/hel-lo</a><br><a href=3D"http://fb.com/hello/goodbye" target=
=3D"_blank">fb.com/hello/goodbye</a><br><a href=3D"http://fb.com/hello/good=
bye?okay" target=3D"_blank">fb.com/hello/goodbye?okay</a><br><a href=3D"htt=
p://fb.com/hello/goodbye?okay=3Dalright" target=3D"_blank">fb.com/hello/goo=
dbye?okay=3Dalright</a><br><p style=3D"margin:0px 0px 15px;padding:0px;text=
-align:justify;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,san=
s-serif;font-size:14px"><span style=3D"font-family:Arial,Helvetica,sans-ser=
if;font-size:small;color:rgb(34,34,34)">Hello<span class=3D"gmail-Apple-con=
verted-space">=C2=A0</span><a href=3D"http://www.google.com" target=3D"_bla=
nk">www.google.com</a><span class=3D"gmail-Apple-converted-space">=C2=A0</s=
pan>World<span class=3D"gmail-Apple-converted-space">=C2=A0</span><a href=
=3D"http://yahoo.com" target=3D"_blank">http://yahoo.com</a></span>=C2=A0cu=
piditate non provident, similique sunt in culpa qui officia deserunt mollit=
ia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est=
 et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi =
optio cumque nihil impedit quo minus id quod maxime placeat facere possimus=
, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem q=
uibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut =
et voluptates repudiandae sint et molestiae non recusandae. Itaque earum re=
rum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores=
 alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>=
<p style=3D"margin:0px 0px 15px;padding:0px;text-align:justify;color:rgb(0,=
0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;font-size:14px"><br=
></p><p style=3D"margin:0px 0px 15px;padding:0px;text-align:justify;color:r=
gb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;font-size:14px=
">Thanks</p></div></div>

--0000000000008dfe8706066a3fbb--
