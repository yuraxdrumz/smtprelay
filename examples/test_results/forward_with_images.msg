Received: from EUR05-AM6-obe.outbound.protection.outlook.com ([104.47.18.107])
        by localhost.localdomain with ESMTP;
        Wed, 04 Oct 2023 09:09:33 +0000 (UTC)
Received: from FR0P281CA0109.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:a8::9) by
 VI1P192MB2163.EURP192.PROD.OUTLOOK.COM (2603:10a6:800:1c1::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.33; Wed, 4 Oct 2023 09:09:29 +0000
Received: from VI1EUR05FT018.eop-eur05.prod.protection.outlook.com
 (2603:10a6:d10:a8:cafe::ca) by FR0P281CA0109.outlook.office365.com
 (2603:10a6:d10:a8::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.26 via Frontend
 Transport; Wed, 4 Oct 2023 09:09:29 +0000
Authentication-Results: spf=pass (sender IP is 209.85.218.50)
 smtp.mailfrom=gmail.com; dkim=pass (signature was verified)
 header.d=gmail.com;dmarc=pass action=none header.from=gmail.com;compauth=pass
 reason=100
Received-SPF: Pass (protection.outlook.com: domain of gmail.com designates
 209.85.218.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=209.85.218.50; helo=mail-ej1-f50.google.com; pr=C
Received: from mail-ej1-f50.google.com (209.85.218.50) by
 VI1EUR05FT018.mail.protection.outlook.com (10.233.243.101) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.26 via Frontend Transport; Wed, 4 Oct 2023 09:09:29 +0000
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-99de884ad25so335440366b.3
        for <eyaltest@cynetint.onmicrosoft.com>; Wed, 04 Oct 2023 02:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696410568; x=1697015368; darn=cynetint.onmicrosoft.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BTeWLunZcRSqgGll8t4oxv8365Jq/gkPZRyKvZISmH0=;
        b=G7Cgmgtmhd9E5ZxXRqGnXxMgD19WgV6Gpxc7gekKcDUafyK8+KYStKzCO+gDWgjpIe
         Jn7Fs3iu5LJDtqORoRM4qgEk234YEQ/snUeZv7QJxOBjNdDQdSBXrYYRx/8HoVqI926H
         j4Px572c7OwpQ2haFLWsUP0Rn92XNWFRdiPO3SoLZjAxrVYX9y1GUaoZNqhEHTIzWYKA
         4qTQdonzq7+CcneMBuBCNqaaVcfDSCLJ9XnjX6Dtcxk9seG/MhO4flohzgSn05M/ZvM6
         4crgHF1aKvdb9bLOz56PYRa1EpLeR13NkyGUfAxFjfA/qi9oCt6nWyhzyYQvWwR3OOH+
         5iDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696410568; x=1697015368;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BTeWLunZcRSqgGll8t4oxv8365Jq/gkPZRyKvZISmH0=;
        b=gvFC+i0uliOenabSnLyPTKZ/pNIW+fvv8/clFO18lm+8QOfurPPodBq1awDw6BfA5d
         48voj54xHIr+6miLfw/NZ+sT2mWRyq3XZuetrNs5NQeaFEW3FfsYmfvaGj06gz0SXdsq
         uh8iXWuP+8JnY3AA1VcHttvNlVpsw43h9OMivJ2gwB/fAsrFeu56kHEcA1NDnnSxb5sl
         H8Psthgh7gCCn1fZRf5sIVfyXlsr0zpDlp4VsoIw6vdLYwRySGKuo7wTue8Cn5c95dHl
         otTMgRbYMLny3ARQljC1uUd02uvYZ6EqiAcQAnZTaLFzOW1KCnT+S4b46w8pcpDtaCk9
         UxLg==
X-Gm-Message-State: AOJu0YxsQ06qK5HNANc+SekdRkhV+W8AYQ2NBmmIsQ+0kATKb4FEhsOG
        iDTExHAVpmqKEDIabJBLIHSkLgoHy3WIqUtdVoOiNJqp
X-Google-Smtp-Source: AGHT+IGv5j4rQ0fgQBm0A2L+a0ClB24lEGqN/p/+/g4oQAp0rO/VFRj0v4xexkKEqL2EmYWhRk5T2oGsTVkbqO6uDmM=
X-Received: by 2002:a17:907:78c4:b0:9a5:d16b:6631 with SMTP id
 kv4-20020a17090778c400b009a5d16b6631mr1866669ejc.70.1696410567816; Wed, 04
 Oct 2023 02:09:27 -0700 (PDT)
MIME-Version: 1.0
References: <be85537a-8599-45bb-843b-ad7da31794a8@iad4s12mta366.xt.local>
In-Reply-To: <be85537a-8599-45bb-843b-ad7da31794a8@iad4s12mta366.xt.local>
From: Eyal gr <eyal.gr@gmail.com>
Date: Wed, 4 Oct 2023 12:09:11 +0300
Message-ID: <CAE+NwjC=FHtuecJtBiqq-sUYzhBwtK22xqpGFT+-7xMVYwnMww@mail.gmail.com>
Subject: Fwd: Made to Travel: Save 15% or more on your fall getaway
To: eyaltest@cynetint.onmicrosoft.com
Content-Type: multipart/alternative; boundary="00000000000049ba010606e05d24"
Return-Path: eyal.gr@gmail.com
X-EOPAttributedMessage: 0
X-EOPTenantAttributedMessage: a84d933a-e471-4128-99c6-d3652501a6a6:0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR05FT018:EE_|VI1P192MB2163:EE_
X-MS-Office365-Filtering-Correlation-Id: 7381e955-8abd-4c6a-a8de-08dbc4b99d6d
X-MS-Exchange-AtpMessageProperties: SA|SL
x-cynet-tttt-token: ea0859f9-f30a-4a54-beaf-669eb9eff12e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
        =?utf-8?B?OTZ0YXZTczluYThVNHJGcW13RFBLYWIxWHJUYkhxZGkxdW1EaXh0aVZRd0Vi?=
 =?utf-8?B?OWtwZEdFeFZrdFBYZmhobWNhSkhiUlIrc2toZ0VVVWRXWnlUTlJlZWxXWnR4?=
 =?utf-8?B?TkVHeDJ3YnB5S0JIYnR4bVVRWnhrNEFIUUw2MDF3eFFCQzl1VTFjSGhvaFVo?=
 =?utf-8?B?blFNbm0waXJyVWxzUEl0NWhpOXpIRDl6NkNNQkE1Tm1SZ3RSMlkyajRvbjNw?=
 =?utf-8?B?bDVrREh6b3hzR013cXlLY24ydW5RM1NtWnBUaXkvbm45QkpTeHM0a3d0SDhR?=
 =?utf-8?B?OVAwQW83SU45enhIb2o3K3pXbGVwZGFVcWNTS2ZSS216R2VYekpzUXZMa3BB?=
 =?utf-8?B?Ym1VZXNhRmVQYzhhWHl0Tk1RUmptczJZSURudnprRzdaRXNwd2VMUFpoL0Mz?=
 =?utf-8?B?aDBERnlKVENWMmlmZGpFTm40Rng0T0pHTENYaG85cHJTV3BucGdUbWVPWFNF?=
 =?utf-8?B?d1VHKzJYZTdISCt2OGphUFJGZFY0MWpZaHFEZEY1ajdqblFiRW13Y3RLbEho?=
 =?utf-8?B?TDF1RmVvQVpQSnZWTmsvSkpnaXRERko0N3dySThwTjJYTVluNXVQeDNucHNI?=
 =?utf-8?B?bTBWcmZoVVFBUm5EVnZualN6TjJINWw3eUtZOHB2Sk9KVjMzenE3bktPOXNu?=
 =?utf-8?B?YzlXWlkyUUpkZmRNVmRBMkEvZTJ0TCsvbStzdGo0M2dGcW5SOVN3S1RJZXBj?=
 =?utf-8?B?QkpFa3A0eVpIbFo1K0RlTWNIVXM4N2lja1FiUnNkTXJ4TC83ZXpGdlZHVm1J?=
 =?utf-8?B?c2pDcEZIU0FOYjZPR24wSzR0dXdZcDg2WGxLT1BTalV4MS9aeHk4bXhUTFN4?=
 =?utf-8?B?blVNdHB1Vlk1dm03NDllTGVIZVNhQnBvOUZLVU5TV2hkUkQxNGVMVm5SdENI?=
 =?utf-8?B?cnhySStsaFFuc2RtOHpiTjV6N3c2V3V3UVBWR2VxWVpta3ByTHlaNVF0VklI?=
 =?utf-8?B?RTdSYUxGckhoRG1ZamFvZElGV3ZpUDVYK0MzNTc3dXFpUkhtMEhTUG1IeEFz?=
 =?utf-8?B?WURYN3VCSkZZYUloeDVSOFdiZFhFWDFkZ3d6Qml0d1RUbnowNDdZS3B0aVlD?=
 =?utf-8?B?ZDM1V0w2eXFXVUQxTEFVQWJDNzEyTXVNN0JZOTNCeDA0djZ2V042a2JUT3RY?=
 =?utf-8?B?MnBWUnp1YnhhY0pPUlVXSkZyaVdCYk1XM24raEhwWjExb0lEUG5QbVVFc3J6?=
 =?utf-8?B?clVrUjhkODhSRVhVMjBaWjlGVHdmWlU3QkF5ZnZYd3FuTnpDci9GMUFTdUFk?=
 =?utf-8?B?UWlPS2pBME9wNFIzc0Y4dU0wcXh6ZC9CSlkxZkJ1elE2QlBoSXg4WkRYMjRT?=
 =?utf-8?B?MVlzVkxPL1UxNEhyd2Z4Mzc3cFVsOFdnMkcxRUwvSGpJMkk5bFBBcTViWUdw?=
 =?utf-8?B?UlRla0lpRHRIYXBVcWZoajQzbXZvSlpic3FHams0WlVCQ1NoK1c2RUc2SEFL?=
 =?utf-8?B?ZFhzRFdTbmEvTUczQTJSV2ovSXcvbkIxZjZzTjgwQlp6cE4yWlhtZUQwRlBo?=
 =?utf-8?B?Nnl0MlNyNyt4cDduRE9xbEFRUnZhQ3VlZFFqVVlhejA3Q05nZlpiVisxVHJM?=
 =?utf-8?B?YUVCRWVuanB5L3lVZzVVK1lBV01NdDFudGdMRjR4SkJPSElUQVdRYytuZDBq?=
 =?utf-8?B?dkJhMGREbGlIMGVqU3NFS1lSdFJ0L2txSzB3WEJPQjhqUmFJNXpxUWZhK3NY?=
 =?utf-8?B?M2srWDZjVGdOcFNGaWt3YS95UDZZMkRjNkpEeUdHVXR2MUxJOFcvSFVwVmFl?=
 =?utf-8?B?cXk5b2I3aW0wYXRleENqY05zTkhUTzZTNlZYKzFPZkpRRDNHZ0hzMEkyczFC?=
 =?utf-8?B?dWt4MlR2cklFQ0hkcUV2ckNSdFpZL09rN1NOUVliWWV1TFhNZUFKOVRkam0y?=
 =?utf-8?B?QW8xbnlLeUs2SnUySG40dzlQY0pBamc4NExhc1BUT05tSWJzWlJJUytRc0pC?=
 =?utf-8?B?NmQ2YlgvZUhNN1hnU3F5bFU4Y1A2NDFPa3A1RWI3S1pkVzk1aFlvWmJORmJH?=
 =?utf-8?B?Qkh2eTRMTWFkSmc5QjBoOUwvS2s4WEdmdE5Ka1ZFMVdBK05GVVN3ci8zVFc3?=
 =?utf-8?B?VzA1MVFRcENEZjlYa2RGT1JNaVZGUUROR0ZNUFdySUV0ZUM1dVVsUXRXRkE5?=
 =?utf-8?B?dXZkMGRLUTl0L083Q3laZ1VzbG8xa3h3OTZPUG5pL1dTQnVJaDFkYzkwaEhu?=
 =?utf-8?B?cnk5ck5aSHJXRVJ5alduSzViYnVZQUJTWEhRYXFGYTNIdndFaEZQdjA4THJx?=
 =?utf-8?Q?0axWD/cBsnfjOZ6zIECgam5TaOetAK8n5HwBR2E1B4=3D?=
X-Forefront-Antispam-Report:
        CIP:209.85.218.50;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail-ej1-f50.google.com;PTR:mail-ej1-f50.google.com;CAT:NONE;SFS:(13230031)(4636009)(451199024)(1690799017)(166002)(7596003)(7636003)(8676002)(6666004)(26005)(1096003)(5660300002)(86362001)(19627405001)(76482006)(356005)(55446002)(42186006)(6916009)(66899024)(82202003)(53546011)(73392003)(336012)(83380400001)(76236004)(33964004);DIR:INB;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
        QL94Qce55NQJ4CZM7/HPmHH3GrXuq/fXeTKfWFe8IHB0bJRcO39kiHyGPli+022ejoM1V8XjQDAbNriyymjp325+RWracyceTjg3VvKAsyI7mSAhfltItPOrDv0K5GmzQD4+/rUQRxgs2hWUcthlsvVf87Q/x3Dex71I3pGBdLv+qme0YJopCfMP4joXde9qOh0jaKAaF3uVBpc0o0HDaL04XVncL8NnLBqbTbiDkMXu5SDP6NaDGqUWopLt3gNPTd0CgSPfWK0pbP5XIt+AmheNFSaRHQTfq6og4m9Nf25yhWV5Z7dw2xh2qLqIvM1G18/YDvGm0HH4iBU6eOudDcPYOnMvUBo08w0zwp7ym66XoslQs6ymbufZRQyAEpArPQJcT/R3sJ3r08Af3UIACkNvc/RWJJiimeFeGS6KI0/SNrRtXvbMZokUBUVcNwtJDsca5Per0+RQcOlkulvlw5MrS/Hmt0E7H3LJKUZC+foupYBttH1qJwVe1BCcHjXTbfDRJwRN2yX75JK46zkN8xuLc4IgJAzrH9cTBV76rHt2rGPXRqpALKobwmXGs3cwRu8CYPLvMh5YF2R+YMDP96e/ZgkGU7r9VBKSw+B20A9f3k+3k9SpgrN1lIgIb4CnPbaYef4D3KofbYZFpvmH4+T2inC33QBKEL3dPiwEMgDzx7At9AuuqhjRNmq6CnDBm9Fk8+sjWomL0ibjgNLesq4gNoRrtRWlFtALfCb8G3Pj1UlM1M7WmET5xBXA6H5wJJunh066AAxaY87RkFsu2Q==
X-OriginatorOrg: cynetint.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 09:09:29.1948
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7381e955-8abd-4c6a-a8de-08dbc4b99d6d
X-MS-Exchange-CrossTenant-Id: a84d933a-e471-4128-99c6-d3652501a6a6
X-MS-Exchange-CrossTenant-AuthSource:
        VI1EUR05FT018.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB2163

--00000000000049ba010606e05d24
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


---------- Forwarded message ---------
From: localhost:1333?u=3DNWJkYmE1NmNiNWY5N2EwNmRjYTQyZGMyMWU1YzY5MDhhZTJkNW=
Y2MTgyNTgwYmE3ZGZjOGNlZTVkZjhkOWMyZTkyZjFmOTg1ZGM3ZTdi <mail@eg.expedia.com=
>
Date: Wed, 4 Oct 2023 at 2:59
Subject: Made to Travel: Save 15% or more on your fall getaway
To: <eyal.gr@gmail.com>


Members always get our best prices
 =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C  =E2=80=8C =E2=80=
=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C  =E2=80=
=8C =E2=80=8C
 =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=
=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C  =E2=80=8C
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=
=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C

[image: Expedia]
<localhost:1333?u=3DNDVhMzIxNTJiZjk2NTMxY2EzYjZhY2MzYzQyZGI3MzU4NzgyYmU4NzE=
4ODgyZTUyZmE5ZTBkNTZmYzVjNTJmYjA5Y2ZlZDAzY2NjZWY3NmI1MWQ1NGRmNjcxZDYwYTJiOG=
I1NjI5YTA0ZmViZDYxYWZhMTYyZGQwNGQxNDIyOThhOTc3ZjdjYjk4YjMwZDAzYWVkYzIwOWUwO=
Tg3Y2I0Mzk4NjEwOTNkODZjMTY3MTBkZjI2YmU2MGY2YTEwZjQyNTg1YTI2Zjk1YjNkMDAxMjZk=
ODg1MjhlNjVhMzNiMTI1NjhlMTJjNmUwNjQwY2ZlMDkyZjRkNDY0MTk1MzM2MThiOGNhNDI2YWE=
3MDdmYWFhNWFhZGQ0OGE4ZGNhMDE1MTJmNmMxZjE4YTA2ZjA1MjMzZjgzZWRmNGZhYWI2Zjc4Zj=
Q5ZDRkZjhmMjM3M2ZmM2Y3NTY4MzViNjA0NzRjZDhiM2Y5OTc5MDVlNzc4NDA5MTZkOTg4ZTc1>

* The Travel Edit
<localhost:1333?u=3DMzdiZjM5NTUwNDlmNWJmMWU2ZDAwZjA5NTFjNDgwMjQzZTFmMGRmZjc=
zODc1YmJjNGMzZTZiNzM1NDBmODRkYzUwMWYwMWE4NGJhMDNmYzY1NTk4NThjZDEzNzVjMGFjZW=
E3ODNlOTRkMzA0ZTc4N2I4M2FkMDZlZDEwN2U1ZDZiMTVkYTU2MDI2NjUxYmU1ODAxYThlNDgyN=
jNmY2JlODkyODdlZWE1MDdjYWI4ZTk1ZjFkZmRlNzQyNTRlZWZjMmUwMGQ2ZTViYTllMTk5ZTY5=
ZDZlNmUyZTY2OWIyNDE1ZGJmNjE1YTFjY2IyYjk0MDlmYmI2ZGUyN2YwYmE3Y2JlY2FiM2I3YzI=
5MmQ5MTc4YjI0MTdmYzIxZTI4OGI1M2VlOGZlYjA2OWVlMzY3NGEzMWQ5ZTE3YjM1MWI3OGZhYW=
FkOGZkMGQ4ODA0MzhiNWY3YjQ4NGFhY2Y5NDIyMzI1ZWIyMWZlZmMzMThlZjFkOWQ3NzYwOWEz>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DYTMwMGVmZDE0ODQwMjMyYjBhZWUzNzFmYjA4N2QwZDE0OTNhZWFhMjM=
zOTQ2MmRkOTZjMGM1ZDVhOTVlY2ViMjU0YzY1ZTRmMTEwOWI3MDg2MGIyOTkzY2FlYWVlMDJhNm=
Y5Mzg4N2QzMTZlMmUzZDQzZDM2NjE0ZTdhMzM4NDcxN2M1NzQwNjZjNTgyOWY5ZmQzMzQ5ZmFkZ=
TFmMmI2NWViYzE5MjcyNjJjMTI3NjZiY2UyMTM1MmE5MzI1ZjMyOWM3ZjdlMzQ2N2U2ZTc3ZGZi=
ODhkMzFiMzNkNjQ5NDMwMmFmMmFiZTFhN2QwZGJlODEyZDA3MTdhYzJiZDczOTVlODAxZDkzYTQ=
3MWNmNDJmYWJkY2M5NmVlMDM3ZTU5ZTkwOTlmNGI3YWJmNWY4YjQyYWQ5NDNjYzM1ODc3MDNkND=
U2ODZjMDhlNjk1MTE3NTU5YzgyY2QxODQ5ZjVmM2ZiMmRkMTg3NTAyYmVkYzhhMmE3ZWJiYzMx>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DOWE2N2NmOGE3M2E3YmI5NjE1NTYyNzE5NGViZjMyODI0MTVhMmYxNjF=
jY2M3ODlmZDA2YWMyZGNmYmUzYzQ2Mzc3MWNhYzhmYTg5NzYxOGVjY2UzOGZjNzk4NjkwNTNlNj=
A3OGZjNzlkZGUxODg2OTM2OWVjNWZlMTcwZGNmNTQ1N2NlYTk2ZTI2YzE3NmYzZjdjNzk0ZWIyZ=
TdjZGI2ZDg0NzIwMDU1ZDJlZDU1ZDk3NjY3ZTMzZWU1YjA0YjkzNzFkOWNhY2Y4NDMzY2NmYjhm=
YWJlYWZhYzgwNzEwODQ3MTg3ODdiOTBlOTMxZDBkZWU4ZmU4M2FhNWYyZTRkN2U0ZTVlMTEzNzg=
2ODkwMjFlNzE4ZDI4MGY1Y2Q4YzI3ODIxODk1MDBmZDBhMGIwOWY4NjdjODQ0MjAxZmVmNDNhNm=
QzZmMyZjExNzdhNTgwYzQ0MzAxZjU3YWY4YjgxMDE2ZWM1NmJjNWVmOGUwMGEzNjZjOTFlYTNl>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DOWVhM2ZkZDg1MGM3ODE3NzY1N2Q2ZWNmMzZhZmViZWUwZWVkZGRmOTE=
1NGU4OWY2NTAyZDEwYTViYmM4OTU4MzhiYjcwMGNhYjkyNjk1YWQxNjA1ZTA2MGFhNjEzYTQxYj=
BhYzRmNTM0MDU4MGM4ZGZiOWU5NjJiMDBlYTRmOTBmNjFhN2E3YTY0ZDk3MzAzY2NiY2JlNzg5N=
GEwODhjOThhMzkzMWZiYjE4MWM1YTY5Y2NiOTg1NjZhMzUyYzJhNTE2ZjYwZDA1NjkxMmRjZTE4=
NWZiNDgzMzMxYTNjYzAxMDFhZmVlYmUxOTcxYTZjZjI1OTcyODE0YzAwNTc5MzBiM2M0YWMwOGR=
mODNmMzI1YzE1YmRhNjUyZTU4OWYzM2EyNDNjZTAzODAxZTllOTk3OWQ1M2IwZTVmM2Y0YTZiMm=
U0YmMxMjRkNzU2OTU1YzhiNDVkZjJmNjRlNzFjMGU2ZjliOTE4ODMzOTA5OGQ0ZmY0OGJhNjFk>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DYzJmOWEwZjBiMDYyM2Q2MGE4MTliNzQyZjE2MWMwMDAxNzA1ZTY4NTR=
kY2E4MzgwYzg5MzY4ODA1NWIwN2E3MjcwODExMzNkYTQ5YTAwYzA5NGQzOWI5ZTBjNTRkZWRiMG=
Y4OTAzNmVmMTM2MTVhZGFmYmE2ZjJlYzVkM2U5MGFhNTUwZGI4MGNmNjY4MzliYzVjYjQ3MTQ1O=
DU3NDRlZWYyZmJhMTY5YmQ3NTg4MWMyYTM4YWI2MzUxMjEzMWMwMDg4NGE4MGYxNDZmM2NkYTM4=
NzQ4MTA3M2QyMzUyMjRlM2EzMzk2NmRhZGVkNmMzNDQxZDExNTQxZjFmYjYxYWU2M2U2ZTQ5MWE=
zZDhhZDU0NTdlNGUxMzBiZTU4ZjI4ZThiY2ZmZjYyYjAxOWM4YTA0MmY4MDc4NDJiM2U5N2Y3NG=
E1YThjMmIyM2RkYmU1ZTQwOWYyYTFjNDg5MmJiNGUzODdjZGRmMmE3MzQ5Y2FiYTM4Yzg0MzQz>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMGE0ZDY1Nzk4OTg3ZGJmNGZkNWU3MTM5NjZlYTRlODk1YTQzNDY4NmJ=
kZTAxODQ2YmI3NzRlMmY0MzJlNjBhNGY5OGUyYjRiYzQ3OTVkMDU2YzA5MjZlNmJhYmRhMDUxND=
hjNGI4MWU2OTQ4MDEyNGJlMzJlNWYyN2MxY2I5YmNkODRlMjk3Zjc2NWM4Mjg5MTAwNzgwYmZlM=
2M2OWFmMWY5MTQxMzE0ZjQ4NGFiMTVjOWNlOTU1NTA0YTMyYTQ0ZTQwZmE1NGU5ZjI2M2M1NWMz=
OWMyM2M3N2JhYWNhNjUwNTVmNTAxN2I3ZTIyNTRhMTBiYzE4MzhlYzVhNWRmMzA4NWIyODJlM2U=
2ZDA4ZThiYzgwNDhkNjg0ZDRmODRjNzI3ZmY3ODAyM2IyYmQxNTIzMzM2MzhhODQ4NzZiNmUzZj=
Y4ZjZlMjk0M2RkM2EwNWNkNzEwMTUzMTRmOGQ0MjZmMmFmODQwYzg1MDI5ODVjY2EzNTRkNmU2>

West Maui reopens for travel on Oct 8

Hawai=CA=BBi Governor Green has announced that beautiful K=C4=81=E2=80=98an=
apali, N=C4=81pili,
Honok=C5=8Dwai, and Kapalua will fully reopen for travel on Oct 8. Plan a v=
isit
to this special place, support the island's businesses, and make a new
memory.

Lahaina will remain closed to the public out of respect to the town=E2=80=
=99s
residents.

Explore Hawaii Hotels
<localhost:1333?u=3DODMzYTE3ZjkwNmJiY2JmNmQ2MDhlNTk2YWJkODQyZDdkZjk4YTI4NmM=
yNjNlMThlNGM0ZWQxMDViMDI3YThiZjhkOWRjOGRhMzMyODVjOGNjYmRmMzgwZGUxN2QxMWU1MG=
UzOWZjMjYxNzgzYWIyYzdkOGVlYjg2YTljOGRmMzlkMjBhMmYwOGRmNzkwZGQ0NTc1OGZiNDIwY=
mRhYmJiYTkwMjFiYjdkNjIwMzFhMjJkZTk1YmY2OWQzZjMwZmM0ZTYxNzQwMzhlODcwM2Q3ZmZl=
OWM1ZWZlZjFhZGNmY2YxMTNkMjFiZTNiZDk0NmM4ZmI3ZjE0OGRkNjkyMWMwOTY4ZTJlMjI5ZjA=
yMmEyMjY1Y2Q0Mjg2NzhkNzJmM2YxODMzMTM3OTZjOWU1MmQ2OTg3YTE1MzJiZDVjZWVlNTkzMG=
MwOGY1YWJkYTBlMzE5Y2E5YTE2NDEzMWYwMzkwZjU1NzE4YjgyMzkwZDY0MzU1YWNkYjk0MTRjM=
zE3OQ=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DMmE3MjZiNTgyZDI3NWJiNTk5YTkxZDBiOTMxOWQ0ZTBjNjM2OWU4MDR=
kMTA1NDE2OWY3OTA5YjQ3MmQwNDU2NzI3NTRkMDQ2NjZhNjk2MzcwOTcwMmQ3YWVkMWYyNDY0Mz=
kyNmZiYjEzNWI4MWIyZDdjMGU4NjFmMjhkZmE5MDU2NDliMGQ0YzIwNzUyMTMzZmQ3YzcwMGRkM=
DY3NGNmMzRmNTliYmYxOTAzMzU4MTI1ZTZmYjkwOWUwZWMyN2Q3OGYxMjg2N2YwNWU5MWVkNGEy=
N2ZmN2UxOTcwYTdjY2ZjZDYzNWQwYmYxYmE3NWRkZGJkOTEzYzcxMDdlODZmMTNlYjY0NTkxMzI=
4YWJmYmI0YmE1YThlOWMxYjFmMDFkYzY1MGIwY2JlYTI0NzU4MjViNzUwM2I2NDYyYjRiZDI3Nj=
lmZWIyN2JhNWQ0Y2FlNGZmODRmMGY0YzU0NGZhYjllYTlmNWFhMjVkMmJiZGJiNzNmNDBkYjVj>
  [image: Google Play]
<localhost:1333?u=3DM2VjZDJmYjBkZmJmNThlNzEyZGYwZDk3ZWJlYTg5NjQ2MThjYzg2OTd=
jYzQxNmZmM2MwYzJiMjdmNWJjNWE5NGNmYzRlOWMxZGY0MDc1YmIyNjM4ZjE5ODdkOWZjMTViZT=
Y5ODhlZWY2M2E0YTBlODk2ZDM4OTZhNGExMDIxZjNmNTgzMTdjMzY4MTI1ZDExNzI1Y2E4ZTA4Z=
GM3YTcyZjQ4OGExMTE2MTEwZGM3MWRiM2ExNGUxOWYxYmIzZGI1MTQ1MGQ4ZmQwZmZhYTRiMTQ2=
OWM4YWJhODAwZTk0YTEwZTM0MjAwYTgyODE3ZTM4MTg2MWIxNjBlNDVkNjIyODhjZDViYTI4NzI=
wMjUyNTJkNzE1MWI5ZWMzMTk2NWYyZTk1NGQxZjM4OTE3NmNhNTE5YmY0YmU3ZWNkZTUxN2U4YT=
g4NTBhOWRhNDU3MjEyOTA5MWUwZTQ5NTdiYjdhOTkzMDE0ODI0YWU1YjAxMWY5ODJhN2ExZjE0>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DYWZiNmQzYTY1NWViMzNhZTFhNDUxOGEwZmJjOWIwNTdiZTIzNGJkNWR=
kMzdhZDJjYjZmMTU2YmZkYWVlM2M0OWExNDI2YWYwOTE1ZjVmOTA2OGY2YzM2MjRlYzU5ZWU3MD=
llM2JiZmYzMDkzYzAyM2M2MDdlNzJjYjI3OTdjYWM3YjJmNWM1NzlmMGY2YTU3MTNmYWVjYmE0M=
TU3MjQ3ZWE1ZTJkMDRjMmY3NWNmNzMwMmJkY2VmZDIyYjUyN2RiMmUxMGI3ZjhiYzBkY2QzMzBk=
OTQ2OTVjNjBjOGY0OTJmOGE1MTRlOWI2YzU3MzdkYjk2NTE2NDlhYTA3OTAxYjMyNDVhZGZlYmU=
wYzdkMTI3MTAxMGE3NjhiZjUyMzgxMzljM2MxYWVhNTNiMTcwMWY5Y2Q3MzEwZGIwMjhmOGRlYm=
ExMzA5OTdmNzQ0OWQxMjA5Y2UyZmI2NjNlYmRlNzgzYTBjNjc5YTJlMDc0NzhlZGVkOWFkZTAzN=
DY5ZQ=3D=3D>
   Manage Preferences
<localhost:1333?u=3DOTI5ODUxYmIzNjBkZTIyYTgzYjNhZmVkYmMyMTA2YWM4NzE2NThhNGJ=
hZWMzZGFiZjdiNThhMTEwZTliNGJhZmRkNmY3ZDJkNWZkZjFlMmZhMDMzMzJkZjIyODQ0ZDVmMD=
EyMjJlMzYxMjIzNzllNWNiM2U4YjMzYjQxMTRlMmI4Yzk2NDk4YmQ4NzcxMWExNzY0YmU4ZmFkN=
jUzNTNhOWM1MzhkYjY2NzU2ZTEwYTgyMzJhMTBlYjU0ZGM3MmJmNTNlNzJlZDE5ZTAzNzljMTAx=
Mjk5NDVlNTI3NDQxZmZhMmIzNjdlZTA5ZmI5Mjk5MTZiNzEwMjEzYzMzOGQwMDVkNDBkMjg2YWU=
3OTUxYWMxY2U0NDQzNzM5MzI1ZTRlODYxZTkxYmNkZjA4Y2YwOWQ5Y2VkMTI3YjA2MzdiMjhhND=
ZjOWJhNGM4MWFiZGU5NDM1OTljMGUzYjBjODg2Y2M3MDgzMDY4NmI4MmY5NGJkNGQxMWM1NzVkO=
DIyNA=3D=3D>
   Privacy Statement
<localhost:1333?u=3DNjZmOTQ5MzVhM2M1OGRlNzkwOGExMjJhYWNhYjJlMGQ1YWRhODc1NGQ=
1OWMwNjM0NThmNDg4YmZkYjA3ODdmOWVjMmQ2MTgyMzc4ZmIzNGQwMTNmNTExYzllOTVkMzhjMD=
FiYmNlNjY1YjQzMTYyOTM3MDFiZDg2ODVkZjNmMWYwMGFhYjA5ODI1YmU4MDk1MTZlMTNkYjIyO=
GFhYWQ4OTE3MGY3ZjRiMjIzMjA4ZmNhMjZkMTdhZTNiOWFmOTM0NjZlMjQ0YjU4ZGExYzZjZDY1=
Y2FhZmQyZmE3YmFkZjU1Njc0NjQ5MWVkMDgyYzU4NGI1NDA2Y2ZlY2YwODc1MmZlODEyYjI2MzV=
jMTUxODJiYmRiOWNkMTY5ZGNkMTViNGEwMzkwMjQxMDUxOGI5MmQxNzBiZDYwN2ZkYzgyODAzNW=
JlMzBiODBjYTMxMTMzZTcwMmYyY2U4ZmMzMGM5MjA0ZWFjZGEzYTU1ZGU3Mjg3NTU3M2RkMmQ3M=
jI2ZA=3D=3D>
   About Us
<localhost:1333?u=3DYzBhMGZkOTk0NGRkNzc2ZWI3MmM1ZGEzNTFjNWJhODEzMjBlYTlkOTE=
xNDk3MmQ4MzhhZjAxNGNhNTU1MGU2ZGEwNGUzYmJlMjA4OGEyZmFlNDg1Y2E3NDE2MGY0NDYxNj=
E4MTEzM2IxYzI5YmViNDIxY2FjMDI5ZDlkZGNmMGY2N2YwMWQ3MjEyMGRkY2Q1NmY2ZmU0ZjM3M=
Dk5OTkwZWUyNTM0NzdiMGIyZDhkODZkMzcwMWRkNzg2MmE5ODU0OTgzMmU3MWRhY2FkZDM4ZGIz=
ZWI4ZDdmMjJjNjhhMjE4YTk2Y2ZhMWI1MTk5NWUxNDVhZjQwNWYyNjcyODIyZTA2ODc4MDY4YTY=
3ODMyZmM2OTMyYTJiMzg3OWQwYmQ4ZTZkYWEyZDc1NjgwMmY0MmRhZDVjNTA0NmM1YzA2MWUxZT=
dkMjIyNTBmZTE4NjdjODExMjNlNTFlYzJjZmY3MWZhMzc0Y2I0YTBiZGFlZGY0ZjhhYzA0MDYzZ=
GE3Zg=3D=3D>
   Customer Service
<localhost:1333?u=3DZGVkMmQyYzNiYzU3MTUwYWE2NzNkNjk5NTdjODdiN2M4NmY3MWQ5NDg=
3ZDQxMzAzNDRlYTNhMzdlMzI3NjUzZTY3ZTEzNmE5YTExODc2MGQxYTk5MWU5YzViMTFlNzZjND=
Q4ODg1NmVjZWViYTY2MGY0MmM2YzRlMDIyMTRkZWQ3ZTg0MzQwNTM1NTQ2MjlmNTA3MThjNDlhY=
mQxMTI2NGM4NjNkNjdmYTUzNjdhNWViMDVjMzg3NTU3NzczYzBhNTA4ZWZjMzQxMjNmYjVmMzQw=
ZjQwMGJhMTQzMzMyMTIyZGJiMzdmYTEzOTc5YzA2ZmE0MzE3YTc0MWJkMDkxZWY0ZGE5YzU0ODR=
lZjc5MTAwY2JkMTMwNWYzNGNjNzIyMjM5OGMxOGVhY2JiZWZlY2MzNDhjNDQ5ZmEyYzNiZWM1NW=
M5NWY4YjI3MTJlZTQ4ZWIzNDNmMWY4YjkxNDNkMmZjN2IyZGNhM2EyMmNlOGZjYTEyZmFkYzk2Y=
zkyMA=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DNDQxYzQxMDIwOWM4OTNkYmZhZDc4MWU1YTA1NmQ2MjkxNjAyMDFjYWY=
2YjhlODU3MTI4NjE3Mjc4MjExNzVkMjEyZTEwMzNkODkyZmE1NzQ2NDhiMWY0Njc5ZjQxYjcyMD=
U0NWVjZDdhZjAwNjM0M2JjZWZlYTYyZGFjMzNmOTQ0ZjQwZGY3Y2I4NWYxOWRjNmI1OTVkMTRkZ=
DY3Zjg4MTA5YmQ3NmU1YzE3OTE4ZDZjMTk4OWI0NDEyY2I4ZGY5MWJiZjJlNGRlNzViYWVhYjQ5=
MDMzZmE5NzIyNWE1YjBhOTgyZDhkOWI3Yzc1ZjAzNDQ4YTlhZDg1NDJmOGI=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DYTM1MTZkMjgwYjNlZDIzOGVkMzc1OTA4MzJjOWVhMWJmNTA1NTc2YTJ=
kY2VjZGE3MTBjN2JhY2YzYWM5ODYwZjY4N2VjZTRiNDZlZTIzOWY5OGQ0NTJlMjJhNDMxNTVhOT=
ZkODkzNjJhM2I4NDBhMDMzYzc1OGQxN2I5ZTA4MTM2NzcwYzMxYTMzZjFkZmUyNTZhNzU4OWFmZ=
jE4NDIyZmI4MTQ2ZmJiYmViNTllM2U4YzE4NDA1ZGQ3ZTU5MTJlNTJkYmMwMDY3ODAwZGJhYmEz=
MGQwY2QwY2FiODMzNzkwZmZlMDNhMmMwOWYyNjc5YzhhYzAyY2IzMjI4ZjgzZGExZTc2MzNiNGE=
4MGFhYzAxNjAyYzNmYjA4MzUwY2VjZmZhZDdlYmE2NzFkYjZkMTE0MjVjNzA5ODNhMWE0NWJkMW=
NkNzViNWY0ZTllZWUyMDg2ZjAwMjBlYjRlNDMwMDc3YjNlYjZhYTQxZDkxYzI5ZDZlZWVkZWU2M=
2NlN2EzMDg2NWFiNDVhZmVlZjNlOTg3ZTk3NDJkMWExZjBmNGZhYjU1NDJhNzNhYmM0ZmY2ZWEw=
MmI4ZTc=3D>

EMLCID=3DUS.MKT.ACTV.6517fb570dbb61a0e51fae804a13e521.EML&EMLDTL=3DDATE2023=
1003-ISSUX.SIDX.KEYX.PAIDX.LANGEN_US.MCIDX.TESTX.VERSX.MIDSX



--00000000000049ba010606e05d24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br/></div><div><br/><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br/>From: <strong cl=
ass=3D"gmail_sendername" dir=3D"auto">Expedia.com</strong> <span dir=3D"aut=
o">&lt;<a href=3D"mailto:mail@eg.expedia.com">mail@eg.expedia.com</a>&gt;</=
span><br/>Date: Wed, 4 Oct 2023 at 2:59<br/>Subject: Made to Travel: Save 1=
5% or more on your fall getaway<br/>To:  &lt;<a href=3D"mailto:eyal.gr@gmai=
l.com">eyal.gr@gmail.com</a>&gt;<br/></div><br/><br/>

<u></u>


 =20





 =20
 =20



   =20







 =20

 =20

 =20






  =20
   =20
    =20
    =20
    =20

   =20
    =20
     =20
 =20


 =20


 =20

 =20





<div id=3D"m_1202337279934882522body" style=3D"margin:0px;padding:0px;backg=
round-color:rgb(243,243,245)">
<div style=3D"font-size:1px;display:none!important">Members always get our =
best prices</div>
   <div style=3D"font-size:0px;line-height:0;overflow:hidden"><img src=3D"h=
ttps://click.eg.expedia.com/open.aspx?ffcb10-fefa1d7374640c-fe2415707c630d7=
f741d75-fe3211727364047c721775-ffc71c-fe3015727166037c721271-fefc1d72756000=
&amp;d=3D120017&amp;bmt=3D0" width=3D"1" height=3D"1" alt=3D""/><u></u></di=
v>
 =20
      <div style=3D"display:none;font-size:0px;line-height:0px;max-height:0=
px;max-width:0px;width:0px;opacity:0;overflow:hidden;color:transparent"></d=
iv>
     =20
<div>
 =20
</div>
<div>
 =20
</div>
<div>
 =20
 =20
 =20
 =20
</div>
<div>
 =20
</div>
 =20
     =20
<div style=3D"display:none;font-family:sans-serif;max-height:0px;overflow:h=
idden">=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=C2=A0=E2=
=80=8C=C2=A0=E2=80=8C
 =C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C</div>
 =20

=20

   <div role=3D"article" lang=3D"en" style=3D"font-family:Helvetica,Arial,s=
ans-serif;padding:0px;margin:0px" dir=3D"ltr">
   <table role=3D"presentation" width=3D"100%" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" style=3D"width:100%;font-family:Helvetica,Arial,sans-s=
erif;background-color:rgb(243,243,245)" dir=3D"ltr"><tbody style=3D"font-fa=
mily:Helvetica,Arial,sans-serif"><tr style=3D"font-family:Helvetica,Arial,s=
ans-serif"><td width=3D"100%" valign=3D"top" align=3D"center" style=3D"font=
-family:Helvetica,Arial,sans-serif;background-color:rgb(243,243,245)">
   <table role=3D"presentation" class=3D"m_1202337279934882522w100pc" width=
=3D"600" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"font-fam=
ily:Helvetica,Arial,sans-serif"><tbody style=3D"font-family:Helvetica,Arial=
,sans-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif"><td width=
=3D"100%" valign=3D"top" style=3D"font-family:Helvetica,Arial,sans-serif;ba=
ckground-color:rgb(255,255,255)">
     =20


<table role=3D"presentation" width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" align=3D"center" style=3D"font-family:Helvetica,Arial,san=
s-serif;background-color:rgb(255,255,255)"><tbody style=3D"font-family:Helv=
etica,Arial,sans-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif=
"><td width=3D"100%" align=3D"center" style=3D"font-family:Helvetica,Arial,=
sans-serif">
  <table role=3D"presentation" width=3D"600" class=3D"m_1202337279934882522=
w100pc" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" align=3D"center" s=
tyle=3D"font-family:Helvetica,Arial,sans-serif;background-color:rgb(255,255=
,255)"><tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D=
"font-family:Helvetica,Arial,sans-serif"><td align=3D"left" style=3D"width:=
100%;text-align:left;font-family:Helvetica,Arial,sans-serif">
   =20
     =20
      <p style=3D"margin:36px 32px;text-align:left;font-size:16px;font-fami=
ly:Helvetica,Arial,sans-serif" class=3D"m_1202337279934882522gutter-margin =
m_1202337279934882522text-align-left">
        <a style=3D"text-decoration:none;vertical-align:middle;font-family:=
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DNGViMGZhZDIxMzU0MjAz=
NGIzMWVkMjFkYWY4Mjc4ZWYyMjAwZmI4NjVmYzFlMmE5ZDM0M2E3MDU1NGMyN2U4MmY0OWZiMmV=
jZWVlNDdlOTlkNmJjYmZiNjkzYzhjY2E4NzQzOTAxODhmMmNkYWNmNWQ3ODViNTg5MTI3YjgzYW=
M0YjlkMmQyZTk0NTY2YjRmMzc0NjI0NmQ4NmE1OGRlODk3NGNkMjU2MDgzOWM1Yjg0MzI4OTE4N=
DVkMzdjYTYyMmU5ZWNmOTcyMWRlMDZhMDYzNTMwYzJkMjZiMTczZWRmNjZmOTM1OTI4ZjllYmNi=
NDQ2ZmE1ODhjY2JjOTk3MjMwYjRjN2VmZmVhZjhlZDUwN2FmNDQ5N2MwYTdjOGY2MDIyMzQ2NWE=
5ZDc4MjM5YWExN2FiMmZlOTM3NGEwZWVhODY3NTYxYTU5ZDYyNmMyMzk1OGQ3Yzg1Y2Q2ODYxYz=
Y2ZTE5YWI5MzEyZjE5ZTY2OWZkYTFmNTM1" target=3D"_blank">
          <img src=3D"https://image.eg.expedia.com/lib/fe3211727364047c7217=
75/m/1/expedia_logo_product_dark+blue.png" alt=3D"Expedia" width=3D"150" he=
ight=3D"auto" style=3D"font-family: sans-serif; border: 0px; height: auto; =
line-height: 100%; outline: none; text-decoration: none; display: inline-bl=
ock;"/>
        </a>
      </p>
  =20
  </td></tr></tbody></table>
</td></tr></tbody></table>


<table role=3D"presentation" width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" align=3D"center" style=3D"font-family:Helvetica,Arial,san=
s-serif;background-color:rgb(255,255,255)"><tbody style=3D"font-family:Helv=
etica,Arial,sans-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif=
"><td width=3D"100%" align=3D"center" style=3D"font-family:Helvetica,Arial,=
sans-serif">
    <table role=3D"presentation" width=3D"600" class=3D"m_12023372799348825=
22w100pc" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" align=3D"center"=
 style=3D"font-family:Helvetica,Arial,sans-serif;background-color:rgb(255,2=
55,255)"><tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=
=3D"font-family:Helvetica,Arial,sans-serif"><td align=3D"left" style=3D"wid=
th:100%;border-bottom-width:1px;border-bottom-style:solid;line-height:1px;f=
ont-family:Helvetica,Arial,sans-serif;border-bottom-color:rgb(223,224,228)"=
></td></tr>
  <tr style=3D"font-family:Helvetica,Arial,sans-serif"><td width=3D"100%" h=
eight=3D"16" style=3D"font-family:Helvetica,Arial,sans-serif"></td></tr></t=
body></table>
  </td></tr></tbody></table>



     =20
       =20
     =20
     =20
     =20
      =20



<table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presentat=
ion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                            =20
                              <td style=3D"font-family:Helvetica,Arial,sans=
-serif">
                                <p class=3D"m_1202337279934882522h-dark" st=
yle=3D"font-size:16px;line-height:20px;margin:16px 32px;text-align:left;fon=
t-family:Helvetica,Arial,sans-serif;font-weight:500!important;color:rgb(25,=
30,59)">
                                  <b style=3D"font-family:Helvetica,Arial,s=
ans-serif"> <a class=3D"m_1202337279934882522h-dark" href=3D"localhost:1333=
?u=3DNWY4ZGJlMDAxZGEwYTNjNzgyZjFkODZlZGI0MDg0ZGQ1ZjU2YTM4ZTg3YTg4NzJkODEwMD=
JmYzc2M2E0OGU4ZTBmNGUzZmMxYTIyNGRjZDYzNTBlZDE4ODUyZjExZWIwZDNjMjIzZmVmZDk2M=
jlhMjk4YzRlZDk1ZWM5ZDVhNDU5M2EwMzhjOWFjMjYyN2QzYjAzMDIzOTRmMzkyYzg1ODUyYzI0=
YWFkOTFlNjM0NzIzNTdhMDkwNmZkNmEyZjIzNjU0NjliOGY0MDExN2VjODhjNDY4NjRjNDVjMDU=
4ODVlZjJkODJhNDg3MmJkZGJiZjhkM2Y3MTVlMjI4ZWNmMDUzNDE1NTk0NWNlOTIxMGFiYzEyMW=
Q2NmM0ZTEzMjI0MGJkZGQ5YWI4MTY4YmUwYzQxMDIzYWVlMDU5ZjFiZmJlM2VlOWI3OTU2MmE4M=
jJkZjZlZDk2MDM1NWU3OWUwN2Y1MTc4YTM2ZDE4NDkwOTRjYTA4OTVmOWNh" style=3D"text-=
decoration:none;font-family:Helvetica,Arial,sans-serif;color:rgb(25,30,59)"=
 target=3D"_blank">The Travel Edit</a></b>
                                </p>
                               =20
                              </td>
                             =20
                            </tr>
                          </tbody></table>
     =20
<table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presentat=
ion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
    <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"fo=
nt-family:Helvetica,Arial,sans-serif">
      <td style=3D"padding:0px;font-family:Helvetica,Arial,sans-serif">
        <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"p=
resentation" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif=
;background-color:transparent">
          <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=
=3D"font-family:Helvetica,Arial,sans-serif">
            <td style=3D"padding:0px;font-family:Helvetica,Arial,sans-serif=
">
              <table cellspacing=3D"0" cellpadding=3D"0" role=3D"presentati=
on" style=3D"width:100%;font-family:Helvetica,Arial,sans-serif">
                <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr=
 style=3D"font-family:Helvetica,Arial,sans-serif">
                  <td style=3D"font-family:Helvetica,Arial,sans-serif">
                    <table cellspacing=3D"0" cellpadding=3D"0" role=3D"pres=
entation" style=3D"width:100%;font-family:Helvetica,Arial,sans-serif">
                      <tbody style=3D"font-family:Helvetica,Arial,sans-seri=
f"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                        <td valign=3D"top" class=3D"m_1202337279934882522re=
sponsive-td" style=3D"width:100%;padding-bottom:0px;font-family:Helvetica,A=
rial,sans-serif">
 =20
                         =20
                          <table cellpadding=3D"0" cellspacing=3D"0" width=
=3D"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helveti=
ca,Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                              <td style=3D"font-family:Helvetica,Arial,sans=
-serif">

                                                                =20
                                =20
                                <p style=3D"margin:0px 0px 16px;text-align:=
center;font-family:Helvetica,Arial,sans-serif" class=3D"m_12023372799348825=
22nomob">
                                    <a href=3D"localhost:1333?u=3DYTc5N2U3N=
mNmOWY0MThlZTE2MDcxNmRkNzE4NTY2MDRlZTdhZDc1NWMzZjg5ZmIyNThlZjdjYTNkM2QyODI4=
N2FkMGZlMjJiMGVkOWU4MTE2OGQ5MTYyZDc1MjQwM2QwMzdlYjA1M2E4MzliNjU4MjE2MDQxOTh=
mMTljOGRiZjg1MTdjMzIyOTM5ODc2NzMzNzFjYjkyMGZiZWY3OWM2MGI5Zjk0NTQxY2Y0ZWRjNW=
UzYWU1YzdiZGU2ZDFlZGRmY2I0MWVhMDEyYzliYjhhMWMwNGJlNThkMTNiYzBmZDM4NWNkOTI5N=
jE3Y2JmNWFlYWNkM2NlMDBkZTI3YmNmZmNjYTVhM2QzZGMxZDA1ZDc3MmNlMzQ1MGMyNmE5NGRm=
MzEwNDQwNzQ4YmQ2OGUxMDdkYTMyYWE4ZjU5Njc4MjlkYWY1ODkwOWMwNzJiMDgwODY0OWRhYjI=
xMzQxZDIxNGJiMmEyMWFiZjM0NzI3ZjY3ZTEzNWU4NDgx" target=3D"_blank" style=3D"f=
ont-family:Helvetica,Arial,sans-serif">
                                      <img width=3D"600" style=3D"display: =
inline-block; width: 100%; max-width: 600px; height: auto; font-family: Hel=
vetica, Arial, sans-serif;" src=3D"https://a.travel-assets.com/travel-asset=
s-manager/cread-2248/US-eMail-UMP-D-600x338.jpg" alt=3D"Plan your fall geta=
way and save with Member Prices."/>
                                    </a>
                                  </p>
                                 =20
                                  <div style=3D"width:0px;overflow:hidden;f=
loat:left;display:none;height:0px;font-family:Helvetica,Arial,sans-serif" c=
lass=3D"m_1202337279934882522showmob">
                                    <p style=3D"margin:16px 0px;text-align:=
center;font-family:Helvetica,Arial,sans-serif">
                                      <a href=3D"localhost:1333?u=3DNmVjOWV=
iYmUyOTFkODFmNGNiNjkwZTQ3NWNjYmM2YmMyMWFkN2MzZmM5ZmU0MWQ2ZjQ2YWI3M2MxYWU3Zj=
A3NTkyNWMzMGJiNjFhYzBkNWM5MTMyMjY5ZGQzYmU1YTgzMjJjNDQ0MTQ3NGFhY2UzOWRkMGFkY=
TY3Njk4MmYzMDlkMTdmMzIyYjM3M2E1ZmYxZDk2YjQ0MWE0ZTdkNWNmOGM4MjM1Yjc3OGIyZTBk=
ZjcyZThkYjc0MjdkYmMzYWU5NzA1NGMxZWMxNGEwZDU0ZTQxM2Y0YzI0MThmNjllNjIyM2ViNDY=
yNzU3ZDdjNzY4NDBhNzY4MGRlODBkMTRhYjUxMDk1ODY4OGJjNWRmZGU5NzkyMzNkZjA0NDVhZG=
MwM2QxM2I4MWZiMWUwMGM3M2Q0Zjk2ZjkzM2NlZDNiMjkwZGU1Njg5NGM0OWI4YWRiZDM3ODRmZ=
jBmYWM0MDIwYWY3ZjRlMGZkYTZjOGNkZjgxNjhiNGI5ZTIw" target=3D"_blank" style=3D=
"font-family:Helvetica,Arial,sans-serif">
                                        <img width=3D"375" alt=3D"Plan your=
 fall getaway and save with Member Prices." style=3D"display: block; font-f=
amily: Helvetica, Arial, sans-serif;" src=3D"https://a.travel-assets.com/tr=
avel-assets-manager/cread-2248/US-eMail-UMP-M-375x375.jpg" class=3D"m_12023=
37279934882522max-w-full m_1202337279934882522w100pc"/>
                                      </a>
                                    </p>
                                  </div>
                                 =20

                                 =20
                                 =20

                              </td>
                            </tr>
                          </tbody></table>                         =20
                         =20
 <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presenta=
tion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                              <td style=3D"font-family:Helvetica,Arial,sans=
-serif">
                                <p class=3D"m_1202337279934882522h-dark" st=
yle=3D"font-size:14px;line-height:130%;margin:12px 32px 0px;text-align:left=
;font-family:Helvetica,Arial,sans-serif;font-weight:400!important;color:rgb=
(25,30,59)">
                                  Made to Travel: Inspiration for your next=
 journey
                                </p>
                                <p class=3D"m_1202337279934882522h-dark" st=
yle=3D"font-size:28px;line-height:32px;margin:12px 32px;text-align:left;fon=
t-family:Helvetica,Arial,sans-serif;font-weight:700!important;color:rgb(25,=
30,59)">
                                  Members save on autumn breaks
                                </p>
                              </td>
                            </tr>
                          </tbody></table>
                          <table cellpadding=3D"0" cellspacing=3D"0" width=
=3D"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helveti=
ca,Arial,sans-serif;background-color:transparent">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                              <td style=3D"padding:0px;font-family:Helvetic=
a,Arial,sans-serif">
                                <p style=3D"font-size:16px;line-height:20px=
;font-weight:normal;margin:0px 32px 16px;text-align:left;font-family:Helvet=
ica,Arial,sans-serif;color:rgb(25,30,59)">
                                  Fall is here, and so are Member Prices on=
 select hotels. As a Silver member, you can save 15% or more on over 10,000=
 hotels worldwide with Silver Member Prices on the app. Now is the perfect =
time to book your fall break.
                                 =20
                                 =20
                                </p>=20
                                 =20
                          <p class=3D"m_1202337279934882522gutter-margin m_=
1202337279934882522text-align-center" style=3D"font-size:16px;line-height:1=
26%;font-weight:normal;margin:4px 32px 16px;text-align:left;font-family:Hel=
vetica,Arial,sans-serif;color:rgb(255,255,255)">
                            <a class=3D"m_1202337279934882522block m_120233=
7279934882522button__primary__link" href=3D"localhost:1333?u=3DNDZjNmM2MTg5=
MWNhMTNhMjUwYjI5NzhlZDkxZmViMTk2NDA0YTFhZmZkMDJmYzQ2ZmIyYmRkMjcwZDBmNjEzYjE=
3YzI3OGNlNWExYzYwZTU5YzZlMmJmZmZmZmYyNjAyZTljYWYxM2ViZGZjOWU2YmU3MzYzZTJhYm=
FmNzkyYTI2YzgxZDcyOWQxMjc4ZjhmOTZkMTk2NTYxODI2MjJmOGIwZjlhZmQzYTdlMDI3ODQyM=
DFjMTc0NDI4ZmZmYWNkMjAzMWU3NWFjOGQwYjdhN2Q3YTU1NTk0OTY0ZGZjY2I3MGVmYmFjZjMw=
NjE0YjgwMGY5Y2UyOTZkMWI5NzFhZjlkMDg4MmIyMGFiODVlOGI0OGIwNTRhNDFhNjE0NjdjYjZ=
iOGU2MmEwNzQ1ZDVmYjI0NDM2YzU0MmIxMzRkNjc4MzFkMmQ2NDk3YzNhMGMwNzViM2YwYTY5Zj=
JhNTRjODEzOTkyMjAzZWFiMDg2NWU0Y2VlYmFlNTE3" style=3D"display:inline-block;t=
ext-decoration:none;text-transform:none;padding:8px 16px;border-radius:4000=
0px;font-size:16px;line-height:126%;font-weight:normal;font-family:Helvetic=
a,Arial,sans-serif;background-color:rgb(22,104,227);color:rgb(255,255,255)"=
 target=3D"_blank">Start saving
                            </a>
                          </p>
                       =20
                         =20
                              </td>
                            </tr>
                          </tbody></table>
                        </td>
                      </tr>
                    </tbody></table>
                   =20
                  </td>
                </tr>

              </tbody></table>
            </td>
          </tr>
        </tbody></table>
      </td>
    </tr>
  </tbody></table>
     =20
     =20


<table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presentat=
ion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
    <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"fo=
nt-family:Helvetica,Arial,sans-serif">
        <td style=3D"padding:0px;font-family:Helvetica,Arial,sans-serif" cl=
ass=3D"m_1202337279934882522responsive-td">
            <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=
=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-=
serif">
                <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr=
 style=3D"font-family:Helvetica,Arial,sans-serif">
                    <td style=3D"padding:24px 32px;font-family:Helvetica,Ar=
ial,sans-serif" valign=3D"top">
                        <table cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,=
Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                                <td valign=3D"top" style=3D"width:100%;padd=
ing-right:0px;border-top-left-radius:16px;border-top-right-radius:16px;font=
-family:Helvetica,Arial,sans-serif;background-color:rgb(12,14,28)">
                                   =20
                                    <p style=3D"margin:16px;font-size:20px;=
line-height:120%;font-weight:normal;text-align:center;font-family:Helvetica=
,Arial,sans-serif;color:rgb(255,255,255)">
                                        News this week
                                    </p>
                                                                      =20
                                </td>
                            </tr>
                        </tbody></table>


                       =20
                        <p style=3D"margin:0px 0px 16px;text-align:center;f=
ont-family:Helvetica,Arial,sans-serif" class=3D"m_1202337279934882522nomob"=
>
                            <a href=3D"localhost:1333?u=3DZDZiYTcyZGRhNzc3Y=
jFkYWVjMWU5ODI0ZGQzMTk0ZWY2MmE5Y2QwMDU0ZmQ5N2E5ODYwOWYyMjVjMmMzNjk3ZTg4MDk4=
NTY2Y2I3OTZhMjY2Y2U2NTQwNDEzNjBkMjBiMmVmN2I4YmM5Yjc4ZmIxMzY3Y2JhMTc1NTYyMTY=
3MDMxMWNlOTUwZWY3OGMxNmZiNDNhMzcxOTAxMjE5MzBiMzFhMWEzMGNiYzFjMTlkZGM0NDBkOG=
Q5MGM5NzRlYjIwYWQ5Y2FkZmYxYzFlMTFhMDUyMDE2MzgwYmY0NjM4ZjhjM2E3NzVjNGFmOTRlM=
mQ1MmM0Zjc5MjRkNDQ5ZTMyMzExZmVkZTZmYmFjNTgzNjJmYjQ4MTQyZWI5MTRkYTc5MzE2NzYy=
Mjc4YmE5ZjViNGM3ZDU4NDBiNDVjMTY4ZWVkMWYwOTQ4NTg5ODk5YWUyMzFhNjZmZjk3OGI5Zjl=
lMTdmNGY4ODcwNDM1NDE2NWY1ZGRkODA5NzE0" target=3D"_blank" style=3D"font-fami=
ly:Helvetica,Arial,sans-serif">
                                <img width=3D"536" style=3D"display: inline=
-block; border-radius: 0px 0px 16px 16px; width: 100%; max-width: 536px; he=
ight: auto; font-family: Helvetica, Arial, sans-serif;" src=3D"https://a.tr=
avel-assets.com/travel-assets-manager/ceorg-3741/WestMauiToReopen-eMail-Sec=
ondary-D-536x230.jpg" alt=3D"Plan a visit to West Maui when it reopens for =
travel Oct 8"/>
                            </a>
                        </p>
                       =20
                        <div style=3D"width:0px;overflow:hidden;float:left;=
display:none;height:0px;font-family:Helvetica,Arial,sans-serif" class=3D"m_=
1202337279934882522showmob">
                            <p style=3D"margin:0px 0px 16px;text-align:cent=
er;font-family:Helvetica,Arial,sans-serif">
                                <a href=3D"localhost:1333?u=3DZDk0ZjlhOWE4N=
DU2ZTIyNDg2N2M2OTQ0MzZiNTcxNjhmOTIzNTQyZjAwNjlmZjU1YjYyZDY4YzJkM2RhNTkwZjIw=
NThlMmUyNTlmN2E3Njg5ZjFhYTI2MTUyZjliZWQ2MGE5NzgyYTI4NmQyMTY1ZGQ2OWViODY0NDg=
1NWRlMzg1MzU4NWU0ZWExYTIyOTVlZWViMWVlZTgxN2U2MjY5YWZkZTk1NTU1OGU2YmQ5N2RhNW=
VkODNhMjBhMmE2MGM3MDhmNWRhNTg1OTU5NmVhMWMwZjU4NGUwNzYxMjRjMGI4ZDYwMGIwNzM3Y=
jllMWU0OGZjODcxZTk4NjVjMDAzMDQzM2QxYTJmNjM1ODAxYzllMWRmN2Y0NDNmODEzNDNlODNh=
ZWE1YzFhOTMyNDc5ODYzZmQ0MjdkODY0NjgxM2RjMTkwZjE1ZWZjM2FiMmZjMTQzMjlhYmUwZGY=
wZDM2YjhmYzA5NzY1Mzg2OGFiODM2NzllOTUwZDZh" target=3D"_blank" style=3D"font-=
family:Helvetica,Arial,sans-serif">
                                    <img width=3D"311" alt=3D"Plan a visit =
to West Maui when it reopens for travel Oct 8" style=3D"display: block; bor=
der-radius: 0px 0px 16px 16px; font-family: Helvetica, Arial, sans-serif;" =
src=3D"https://a.travel-assets.com/travel-assets-manager/ceorg-3741/WestMau=
iToReopen-eMail-Secondary-M-311x311.jpg" class=3D"m_1202337279934882522max-=
w-full m_1202337279934882522w100pc"/>
                                </a>
                            </p>
                        </div>
                       =20
                       =20
                        <table cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,=
Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                                <td style=3D"font-family:Helvetica,Arial,sa=
ns-serif">
                                    <p class=3D"m_1202337279934882522h-dark=
" style=3D"font-size:16px;line-height:126%;margin:0px 0px 8px;text-align:le=
ft;font-family:Helvetica,Arial,sans-serif;font-weight:600!important;color:r=
gb(25,30,59)">
                                        West Maui reopens for travel on Oct=
 8
                                    </p>
                                </td>
                            </tr>
                        </tbody></table>
                     =20
                       =20
                        <table cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,=
Arial,sans-serif">
                           =20
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                                <td align=3D"left" valign=3D"middle" style=
=3D"font-family:Helvetica,Arial,sans-serif">
                                   =20
                                    <p style=3D"margin:0px 12px 8px 0px;fon=
t-size:14px;line-height:144%;text-align:left;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(25,30,59)">
                                      Hawai=CA=BBi Governor Green has annou=
nced that beautiful K=C4=81=E2=80=98anapali, N=C4=81pili, Honok=C5=8Dwai, a=
nd Kapalua will fully reopen for travel on Oct 8. Plan a visit to this spec=
ial place, support the island&#39;s businesses, and make a new memory.
<br/><br/>
Lahaina will remain closed to the public out of respect to the town=E2=80=
=99s residents.
                                    </p>
                                 =20
                                    <p style=3D"font-size:14px;line-height:=
130%;font-weight:normal;margin:0px 0px 16px;text-align:left;font-family:Hel=
vetica,Arial,sans-serif;color:rgb(22,104,227)">
                                      <a href=3D"localhost:1333?u=3DNDg2NjI=
5NThhMDU0YThiZTFmNTRmYmUxOTNkMDI5MTMxNzYyN2RiOWQ0MTY2OGE0ZmFiZmE1MGFmYzc4MD=
QxZjc2OWIwOTg4MTRhODBmODIwYmFiM2I3M2Y5YzJjZTA0NjAxM2FkOTc1NmFkNDhmOGJjZmFjY=
zdmOTNlNWJlZjI4Mzk1MDZjZGQ1NDA2ODU0YTA3MTc1NzE3MTFmNWEwNjFmODhjZmI0YzZmMjI0=
YjZiMGZjZTFhNjg1MTg5ZTUwYTM5MTA4ZDBiNTEwMjBjNDdiNzY2NWRkZTlmMDc5ZjlmM2U4MGI=
5MjU5NzYzODZiOTYxN2MwMDVjM2ZkNzNiYWEyMDQ0ZTRlNmNkNjczM2IyNWRiOGJjNWRlYmI4Nz=
dhYjA5MmVmMDNhOGE2MzViMzgxOTE2MGY1MzA3NWU1M2EzMGI2ZjRjZDZlMGU4NmFiMzZlMzUzM=
DVkZGRkZDZmZTExZDFhM2UwYTA1OTA5MWQ0NDU3ZjY4MmU5NjdlOQ=3D=3D" style=3D"text-=
decoration:underline;font-family:Helvetica,Arial,sans-serif;color:rgb(22,10=
4,227)" target=3D"_blank">
                                        Explore Hawaii Hotels
                                      </a>
                                    </p>                                 =
=20
                                 =20
                                </td>
                            </tr>
                        </tbody></table>                     =20
                    </td>
                </tr>
            </tbody></table>
        </td>
    </tr>
</tbody></table>


     =20
      <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"pre=
sentation" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">=
<tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font-f=
amily:Helvetica,Arial,sans-serif"><td style=3D"font-family:Helvetica,Arial,=
sans-serif"><div style=3D"line-height:16px;height:16px;font-size:16px;font-=
family:Helvetica,Arial,sans-serif">
        =C2=A0=C2=A0 =E2=80=8A</div></td></tr></tbody></table>
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
       =20
       =20
       =20
       =20
       =20


<table role=3D"presentation" width=3D"100%" border=3D"0" cellspacing=3D"0" =
cellpadding=3D"0" style=3D"max-width:600px;font-family:Helvetica,Arial,sans=
-serif">
  <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font=
-family:Helvetica,Arial,sans-serif">
    <td style=3D"padding:24px 0px 0px;font-family:Helvetica,Arial,sans-seri=
f;background-color:rgb(243,243,245)">
      <table role=3D"presentation" width=3D"100%" border=3D"0" cellspacing=
=3D"0" cellpadding=3D"0" style=3D"max-width:600px;font-family:Helvetica,Ari=
al,sans-serif" class=3D"m_1202337279934882522w100pc">
        <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=
=3D"font-family:Helvetica,Arial,sans-serif">
          <td width=3D"100%" align=3D"center" style=3D"font-family:Helvetic=
a,Arial,sans-serif"><p style=3D"font-size:16px;line-height:150%;font-weight=
:normal;margin:0px 36px 9px;font-family:Helvetica,Arial,sans-serif;color:rg=
b(25,30,59)">Download our FREE mobile app</p></td>
        </tr>
        <tr style=3D"font-family:Helvetica,Arial,sans-serif">
          <td width=3D"100%" align=3D"center" valign=3D"top" style=3D"font-=
family:Helvetica,Arial,sans-serif">
            <center style=3D"font-family:Helvetica,Arial,sans-serif">
              <table role=3D"presentation" border=3D"0" cellspacing=3D"0" c=
ellpadding=3D"0" align=3D"center" style=3D"font-family:Helvetica,Arial,sans=
-serif">
                <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr=
 style=3D"font-family:Helvetica,Arial,sans-serif">
                 =20
                  <td style=3D"text-align:right;font-family:Helvetica,Arial=
,sans-serif">
                    <a style=3D"text-decoration:none;font-family:Helvetica,=
Arial,sans-serif" href=3D"localhost:1333?u=3DZDk4Y2I0NDU5Zjc4MzEyODk5MzFiMD=
IxY2FkZjE2MWY0ODBlYzA2MDRmZDQwNzhhNzZmYmQ5ODVlYmUxZDIyMzA2MDc3MTU0NjA5ZjU5N=
DY5OTAxZDYyMDVmYzgxNmRlMWRjNzYwMjA1NGU5ZDQ5ZWE1YTc0ZTg0YzQxZWI5MTk2ZjBiMmIw=
OWE2YmZjMjViMzc5ODQxZmRmYjNkMTQ5YjNkMzhmYzJmY2ZhNzI4YjVkNzNkYWU3YjNjMDVmMWI=
0ZDUwNDZiNjIzZGRkMDUzMzE1ZjA0NGJiNGU1OTZjM2Q2Yzk2NDA4NTkyMjFlZGZlNjY1OWQ1MT=
E0YjQzMDA3ZjU1NGRiOWMyM2VmNGM0ZTRlMzVjZTUxZGQ5MGI2MjUyMzhlMDI4MjJmOGUyNWZkY=
TIzYjdmMTkxMzkwMDYwM2VjODFkNTllMDY4Y2FjYjgwZTQwNzc3MDU0MDAwZTZhYmFiMDkyMGU0=
YmFiYTM4NmE0MjQxNDJhMjdi" target=3D"_blank">=20
                      <img src=3D"https://image.eg.expedia.com/lib/fe321172=
7364047c721775/m/1/enUS_iOS.png" alt=3D"App Store" width=3D"auto" height=3D=
"28" style=3D"border: 0px; height: 28px; line-height: 100%; outline: none; =
text-decoration: none; width: auto; font-family: Helvetica, Arial, sans-ser=
if;"/>
                    </a>
                  </td>
                  <td width=3D"14" style=3D"font-family:Helvetica,Arial,san=
s-serif">=C2=A0</td>
                 =20
                  <td style=3D"text-align:left;font-family:Helvetica,Arial,=
sans-serif">
                    <a style=3D"text-decoration:none;font-family:Helvetica,=
Arial,sans-serif" href=3D"localhost:1333?u=3DMDY5MzM5MDQxMzUwMjcyZjEzYTNhMj=
YxOGRiODc5ZTRmNmNkOWZiYmVkMjA3YWNkYmNiZjI0NzA0YjhhYWRlNjdlYzY5OTNmZTY1MDdkM=
2QxNzJlNmUxMWVhNWJlM2Q4OGVhYjc1NmE0MTA3NjY1ODA1YmVmNGRhYzI2YTg5MmYyZDhjYTA0=
OWY2MTRlMjJiYmI4MGY4ODBhOGRkNjU1YTMyYTZmMDE5Y2U3Mjk3YWM5ZmFmNjk0M2NmZGY1MGF=
iOGU4Mjg0YzM1YTQ5NTBmODYyZWM2OWI5YTVlNTgyNTA3NmZlMWVkOGU1YWExODUxZjJiMmE0Ym=
Y3Mzc3NjkzNmFkNzg3ZWM0ZWQ5OTQzZDIyZGU5YWYzYTM5OTU4ZDJjZTg0ODRmYjBiNWQ1NzU1M=
WYyNDFlYTdhMTUwNTZlOTVhODg5NDE0OGI2MWQxMWM3ZTRiYzdhZmMzYzFhN2I0MjFiYmNkOTlj=
OGY0ZjU3ZWM0OWNiMTkyNGRi" target=3D"_blank">
                      <img src=3D"https://image.eg.expedia.com/lib/fe321172=
7364047c721775/m/1/enUS_Android.png" alt=3D"Google Play" width=3D"auto" hei=
ght=3D"28" style=3D"border: 0px; height: 28px; line-height: 100%; outline: =
none; text-decoration: none; width: auto; font-family: Helvetica, Arial, sa=
ns-serif;"/>
                    </a>
                  </td>
                 =20
                </tr>
              </tbody></table>
            </center>
          </td>
        </tr>
      </tbody></table>
    </td>
  </tr>
</tbody></table>

       =20
<table role=3D"presentation" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" width=3D"100%" class=3D"m_1202337279934882522w100pc" style=3D"font-famil=
y:Helvetica,Arial,sans-serif">
  <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font=
-family:Helvetica,Arial,sans-serif">
    <td align=3D"center" width=3D"100%" style=3D"margin:0px auto;max-width:=
600px;font-family:Helvetica,Arial,sans-serif;background-color:rgb(243,243,2=
45)">
      <p style=3D"font-size:12px;line-height:134%;font-weight:normal;margin=
:24px 36px;font-family:Helvetica,Arial,sans-serif;color:rgb(25,30,59)" clas=
s=3D"m_1202337279934882522gutter-margin">=20
       =20
       =20
        =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNDc5YTU1YmEyYWNh=
YWM5NzA3N2JkZjg5YWQ1ZGRiYzdjMzEyNGExYmYwYjNjZWFiYmVkYWJlYmMyYjBmY2RjOTkzOWE=
4ODE2NWJmZWU4NGJlMjYyYjdjODNhMDQzZTdkZWJkZmU1YTNiNWRlNmQ0MDZmNWUxODIwZTk3Mz=
UxMTIwZjZmNjAxYWE2MDRhOTlhZGNlNDNiMjA3MGQ2NjE2ZmZkYjc1YTY0NDg5ODM5NjAzMmE4N=
jcwMTYyNWEzNjA1YmI0ZWY4OGIyNWQ2MDYzOGUzMWYyY2I3ODA1NzIyYzVlMTNhMTk4ZGE4MWM2=
ZDNlMjBmMmYzNTljNzI4ZTNiYWM5NWY5MmQ3YTIyMjJhNjg2Yzk4NmQ5ZTAwNjZkZTc2YTgyMDl=
iMjg4YTA5MGYwMGM5YzVmOWY1YjRhNzQwNWRlNDY5NzdmZjhiZDVjNzkzYjU0YmIxMjFkNzAxMG=
FmOTM1MDQ4MWY3OTg0ZGYyODNlYmNkYTAxNDJkNGRiOQ=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZDMxZWVjOTJhNjI0=
NDg1MDI5MmUwMDZiYzA3NTA3OGZkM2EzNDc5Mzc2NDJiNTkwNDk3ZTY3MWU1MjM4NTI0YjU0ZmM=
wNmU0Mjc5NTZhMDlkMzUwMDhlODBiY2Y4OTVkNDQ5MDkwZTg1YjRlNmZhZTM0OTI1NDUzMGUxZW=
ExOGZhNTdkNzM5NWY4YTRhMjZjYTQ4MGUxNmMyMTZiNjAyM2RhN2YxYmUzNGJmYzQ0Mjc2NTBhM=
2FlNmQ3OTIwZTNkZTVjNjEzMmJiMzliMjk5MTQ2NGNjNzE3N2Q0MDQ1Yzk2ZjM2NTQyNWU3NTkw=
Y2YzYjE2MWE2NTVhN2UzZTY3NjVlMjc5MTZkOGUwZWJiN2JmODUxNDUwZjI3N2IzZGI3ZWI2NzI=
wOTA1MTZjMTA0YjlkMDJlNGRjYzgxMjgwMWZhMjYyZThkNTAzZjJkYmY4YTA5NDA5NjQyYzA5Mj=
Q4YzNhY2RlYzc3YWM1MjE0Nzc1NjE3MjhkYmNkYzIyZg=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNDhiODNkZGNkNmM3=
MWYxNjJlZjZlMDI3MmUwMWE2ZTNjMTUyMGY5MzExZDlkYTQyZmRlY2MxMWEwMGZhM2RmZTY0ODd=
jNDRmMTJmMDU2ZDczY2M2NzMzZWI5YTYzZDdiYTdiYTQ1MDhmNzQ4M2ViZDczZTkxZGViZjk4Mj=
BlZjJmZGE5NWYwNThmODQwZjAzNTQwNGQyNjY3NWRiN2M2MmUzMzE4YWQyMmFiZWJiYjE4NGQ1M=
zBjNGU5MmZhMTQ5M2RlNzYwMDIzMGJiM2RkZTJlMzYwZTM3MzVhYjMyNTY3YTYyNzBhYjRjN2Jh=
MTQxMTRlYjI0MTMwNWU4MGE3MDA0YTJiYjk1MDc3ODIyYmJmMWMwNjBkNTNkMWVmNjM4N2Q5Yzg=
zZjI4OGU4MGNlZjY5NTUxMjllNzcxM2UwYzNjM2FhYzVmZTc4Nzg1OTJkOGRmZjZhM2UwMzg3Ym=
I0MGVjMjM2YjFkZWFkOWRhZWYyYWUwYzgxMzhiM2JiNg=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DODUxM2NjYTRjMTIx=
ZDYzM2NkY2I5YTY0ODZiNzQ0OWNmMTdiZDA0MmViZTZhN2I5Y2E5NTMxNDA4Y2Q5ODhlMzQ3OTR=
hNjI2MDExOTdhYWVhNTNiZjUzOGNhZjQzZWVjYjdjMGJkNWIxMWJjMmQ2OTg5ZjQ1YjU2MzJjMD=
E2NDcyNDM3ZjRkNjlkZTAyMDhhNDBhNjExMWY2MjEzNjE2NWEwODRkYzVlYzA3NjkyODVlMzBmN=
ThmMTQ3MGRkMTZlMDVkMDY0ZDcyZTdhNDBhOTdiOTAzMDI0OWMwNWVmMTc5MjhmN2Y1YmQ0ZjBj=
NTYyMmZmNWE0OWE5ZmFjOGZlZTRhMDg3ZmZlMThhMGExYTE0NzljN2ZiZjdmYjQ2NTUyMDU1OWY=
xMjFiMzE5ZGViN2M4ZWFiMjdhYzRjODhkOWIxOGNiYzg0NDdhM2U2NjNhNWNjYzM0ZTc3OWEyNT=
I1MWM0OGZmMzZkN2ZkOTIxYjdjMzY2NjY5ZjlkMDliOA=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DM2NmNWJlZjYyYjE4Yj=
hiMzEyNTg3MzBlZjM3OTgxM2U3YjIxZWU1OTU0ODkwYjMyZmM2Y2FlZGY1MDU0YzdmNDY4NWM5N=
jZkZWZjNjFiYzBkZmZlMTdiODVjOTY2YmJjNjgwMTU0YzIzZTMwOWQ4NGM3ZDVmNTFkZWQ5MTUw=
NTUzMzYzNTVlNzYxNzAzNTcwODUxNGU4MTkwMjY4ZWEwZjRjNWJhOWU1NzEyYTg1YWU0YjdiZDg=
4ODlkYzAyM2RjMzE4NmI1NGJkZGY4YmVjYjdhMGFhZjA1NTI3YWU0YzZhNjMzYzI1YmUwZTRhND=
gxNTliY2FhZWE1ZDVjYjI4Yjk4ZTA3ZDdlMjFkN2QyYzVmODNjNmZhZTAyNWE0YzNmNWJlNmVkZ=
WUxM2ViMjExMjFhOGZkMzc1MjRjNzU2MzgyYWRlMzg2OWQ5ZGM5MTY5NTNkZGNjNTZiMTRiZmZh=
ZDU0YjYzNTI1MzA0MzQwYmE1ZWZiMzIwZjgxY2JmNQ=3D=3D" target=3D"_blank">Custome=
r Service</a>
       =20
      </p>
    </td>
  </tr>
</tbody></table>

       =20
                =20
<table role=3D"presentation" width=3D"100%" border=3D"0" cellspacing=3D"0" =
cellpadding=3D"0" style=3D"font-family:Helvetica,Arial,sans-serif">
  <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font=
-family:Helvetica,Arial,sans-serif">
    <td style=3D"font-family:Helvetica,Arial,sans-serif;background-color:rg=
b(243,243,245)">
      <p style=3D"text-align:left;font-size:12px;line-height:134%;font-weig=
ht:normal;margin:0px 32px;font-family:Helvetica,Arial,sans-serif;color:rgb(=
25,30,59)">
   =20
   =20
    =20

     This email and its links may contain your personal information; please=
 only forward to people you trust.<br/><br/>You are receiving this email be=
cause you are eligible to receive promotional emails from Expedia.
         <br/>
         <br/>
   =20
       =20
    =20

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DYWY5NzQ1MGRjZjAz=
YWQ5N2UwMTJmOGJlYjI4MDFkMTQyY2Q2NmI3YzM1N2RlZGVlOTdhZjEzOTExYTQ2ZTc2MDY3ZDk=
0M2M0NmZkNjU3ODRhNjY1NTU5Y2Y0YTNkNjhmOTQwYzExZWQ1ZjgxZWQ2YTllOTQyZGJhYzcxYz=
g5ZjMxZWFlNWYzYjFhMmY0YzkxYjgxZjgwYmU3MmI4ODBmMzdiOGVmNDk5MWVlNTZjMjk0OTllO=
DhlMjRlYjgyNGQ3NDVhMWE5MTdhYTZiMjgzMDA5MzE5MmE0N2VmY2UyZWIzOTUxM2NiYmVjNjIz=
NWM1NTlhZWMyZTIyNTkyMzc=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
">1111 Expedia Group Way W., Seattle WA 98119</a>.=20
          <br/>
          <br/>
       =20
       =20
         =20

          <strong style=3D"font-family:Helvetica,Arial,sans-serif"><a role=
=3D"presentation" style=3D"font-family:Helvetica,Arial,sans-serif;text-deco=
ration:none!important;color:inherit">CST# 2029030-50</a></strong>
          <br/>
          <br/>
       =20
       =20
         =20

          =C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights r=
eserved. Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks =
or registered trademarks of Expedia, Inc.
          <br/>
          <br/>
       =20
       =20
   =20
        <a href=3D"localhost:1333?u=3DMzBmMDJkODQzMGFiMjVmZWY5NTAzYzRiN2RjZ=
DllZTcxYmU3NGEwOTA1MDg0NTc5NDFmNjQ4MWE1MGNjNDQ2ZGYyOTUyM2Q5ZTBiZDlhMDQwMjEz=
NTA5YTg4ZTE3NDhhY2NhMGE4NTZkMDYwZTZiYjUyMGJjYzQxYzI5OGZhYTQ5MTQyMjU3ZDQ3Zjd=
jNWI4MDlhMzdiZWM0ZjQyZTExZjAwZWQyMjNmNmUxZmViYjVhZjE0MjFmODNkNDlhNjMwZWU3Mz=
k4NWViMWY3YmNkMzMwZmIyYWU4ZWU2Mjg2NDUyMDM1NGEwMmIzZjExMmQ0MmZhMTFlYmM3ZGY3N=
mE4ODE2NDE4ZGQyYTU0OTM5MjI1MThkODI4NzQ0OTM2NTdmZjIxN2MxZTY0MWE0NTE0MTRkOGQ3=
NzA2MDU3ZmRiMDlhMmI5YmNhY2I0YjIxNmIwM2QzMWYwNjEwM2I1OTI4YmNhYTRiNDA3ODliYWV=
mZDM2OGQ1ZmQzZTljZDYyNWViZDllMmY4YmU0ZmVhMTc2ZTcyZWZiODQ1NzBlOGI4MDQ2Mzg2OD=
Q1NTYyNjZkZThkNWQ1OTAzNTU=3D" style=3D"font-size:12px;line-height:134%;font=
-weight:normal;margin:0px;text-decoration:underline;font-family:Helvetica,A=
rial,sans-serif;color:rgb(22,104,227)" target=3D"_blank">View online</a>
          <br/>
          <br/>
      </p>
     =20
      <p style=3D"font-size:12px;line-height:134%;font-weight:normal;text-a=
lign:left;margin:0px 32px;word-break:break-word;text-decoration:none;font-f=
amily:Helvetica,Arial,sans-serif;color:rgb(243,243,245)" aria-hidden=3D"tru=
e">EMLCID=3DUS.MKT.ACTV.6517fb570dbb61a0e51fae804a13e521.EML&amp;EMLDTL=3DD=
ATE20231003-ISSUX.SIDX.KEYX.PAIDX.LANGEN_US.MCIDX.TESTX.VERSX.MIDSX</p>
     =20
    </td>
  </tr>
</tbody></table>

       =20
 =20

       </td></tr></tbody></table>
       </td></tr></tbody></table>
 =20
  </div>

</div>




</div></div>





--00000000000049ba010606e05d24--
