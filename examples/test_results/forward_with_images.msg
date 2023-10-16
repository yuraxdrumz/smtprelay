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
From: localhost:1333?u=3DY2U4YWZmOTQ0ZjJiNmNjNmFlMGI1NzE5NThiZDBmODI2Zjc4NW=
EwMzEyZmU5MWQyZDk5YzllYWU1MGZhMGFlMTQwOGI2ZjE3ODAxMTE1 <mail@eg.expedia.com=
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
<localhost:1333?u=3DZTNhNjA2YjFlNjgyMjQ1ZWJkMTU3ZTllM2I5MDdjNjg1ZGQ3MDBkNDE=
wMDM2MmRhZDVhZjAwZDdlZGNiNjFhMDQ2ZThjMTQ1MzVjYWM5ODRiMjI1Y2ZmNTI2YjE2ZTA2MG=
Y5OTdkMTRiYjdjZDgyNzBkOTIxNjJlYTk2NGM2YThkYTg3NTE2ZGRkZDU5OGQ3MGI5YWYxNmZjN=
TgyZjViMTcxYTA4NzdiNjkwOTQ5ZGVkNWRlM2M3MTc4MmFiZWE1OWVmYzdkYjc3MDFjYzIyMDJh=
NzhmNjM5ZjY3MTQwMGQwMTNiNjBhZjVjMWY2MGUwMjhkYTY0NjkwOTI2YzkyMmYzMjY5YjU4YTV=
lMWRiOWJlZThhZWM1MmFjOTlhOWY5ZjU4NzYxNjZmN2RkMTNjMjBjNDljZGM2YmFkMDcxODFjYm=
U1OGMyZGMyNTc2MzEwNjZkMGE4NDVjZTY1ZGQwZTNhZjJlMTYzMzExY2MyMzZhOTNkMTM1ODFj>

* The Travel Edit
<localhost:1333?u=3DZTQ2ZWM2NGRiZWIwODE1NWQyYTQyZmI3Zjc1Y2NmOWJlZDFhNmY1MmM=
2NjU4OTU5NTVmZTgzZDliY2Q0NTlkZGI2YWZhMDYzMGU2ZjllYmVkMjdiZjc2YWY4MjQ3NGNlYz=
kyYmIxYTE0MWQzYzk2YTU5NmI0ZDljYTdlYTAyMmQ5ZmQ2YTA3YmY5YmFmZGM1ZDBhNmY1YjdmZ=
mI5YmRhOGNjNmRhNDYwN2ZjNDQ2OGUxMmI5OTEzYmFhMzY0MjhhOTE1ZDFiMzI0NGI2OGQwNTgz=
MGNkMzRkMWZhZjk5M2I3OGVhMWI1MTViZjM0ZTUwZjVjNjMwODg3YzY3NDM3YWZlYTQ2ODI2YWQ=
4NDg0YTg0Mjg0MzYyZDFhNzNiY2ZhZTg3NTI4NzdkNjFlMmFmNDBmODAyY2I1NWQwZDU2ZWIwYj=
kzMTg4ZGY4YTNhZGVlNjkyMDAyMmZlNmExODViZjNhYzhhYjg1YTA4MzUzMmQ5NGM2NTE0YjQx>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DYmU2ZWU3NzE2ODc4YTVkMjQ2OWQyMzUwMjQ5OWFiNDM2OTlkNWNiYjY=
3ZjMwOTNiMDJiN2YzZDdmMDc3ZDIwYmJhM2Q3NWJjZTAzNzY1MWZmODRkMWIyZTBjYzZhOTQxNT=
U5ODRjZjhjOTU1NzZmOWFmZmRjMjJkOWIzYjMxMjk2OGZlM2IwY2ZmYWFmMGViMGU0NjIwOWI2M=
mIxZmU1Nzk3OTk1ZWEzZDMwZjY2YjA0YzgxYjBlMDQ4MDc0ODEyODBiMWNhMGM5Y2Q2ZWJhNjFj=
NTdmMDFiOTA3M2VhOTZiMzgwMDkyZmEyZjlmMTRlNzAwZDlmNjZmNjliNzNjZGE0OGVkOGI1OTE=
4OGE5MGM4ZDVhMDc4NDhlN2NhMTQ2NzA2ZDUwZmY5OThiMmNjM2YwYTA3MzJmNzQ4NWYzYzk4ZT=
k0OTBlZmZiMjNlNGMwZTlkYzJmOGRjNTc1NjAzMDk5NTVmNGY0ODVmMmNlNDA3YmU2YWIxMjRl>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DZjE2YjllYmRkOWZiMzg5ZmE0ZWE0NzM4ODQwZDlmYzljOTRhYWRjMDd=
lODY2MDliODcyODgzNjRjZjcxNTkyNmQwYjgzMGY2MDE0YWFiOWU0YjU0OGE0ZWMwOWI3MjQ0Nj=
llY2UzZjJjOTkyYzYxZTExOWI3OWNiMGUxYzk1Zjk2NDdjNGQwZjU2NmE1MWM3NWE2Yzg3ZTBmM=
GQyZmU3NzlhNTYxOTJmMWU4ODkzNzliY2IyNjk0NWRiZjIyNTRhZDM1Y2JhZTZkYmE0MDg2Y2Y1=
ZjYyZWFkODI2OGNjYjYyZDI2N2FmNGU3YWRjNDY4NWYxMGI1OWYyZTIyY2Y5Zjg5NGE5OTZjYTU=
zYWY0OTc0N2MxODFiOGJjYWIyYjNlNTlkYzVhNzhiZTlmYmVjMjc0YzMyZjkzOWQzNmQzYjhkMm=
ZlNzliMzM1ZTRkYjA4MmRkM2EyYzJjNzRkZWU1NDA2Mjk3MTViZmY5Y2IyMjYyNDY5NGFjNmY3>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DNzhhMmUzYTY1NTA5OGM1MTUzYTZkNzZlM2EwYzI2Y2JiODliY2ZhN2M=
1OWE3MjNhOGMxMGQyNjg4YmMzZDE0NjhjNzczMTI3YTU4ZjM1NzBmZmFjYWExZDE1MmE2Y2UwMj=
IyMTBkODQwYTM1Zjg3ZjkxNTZiZGI5ZWJkMjIwOGE5YThlMjk5ZjRhNTk5MzZjYThhYzIxZTY4M=
zE5MThkOGJlYmQ5OTZlZDUxNWI1NDMwMzZhNDNhYTE1ZWE5YmE1YzM5MjkwZWEyNTAyY2E0N2M0=
NjdiMzA3YmEyOGZhZjlmYjE5NzAwYTU2MmM1NGFiNzg5ZGM0ZmU5YmRiNmRhMjdmM2ZkMWZjM2U=
4NDZlMGNiZGU1MDYwOTA2M2UwYTZlMmRlMGMxOTY1MTY1MDQxMzk4Yzk1YjRlYTZlNDhiNWZjYj=
FkZGMxN2Y5NzM2NzBkMjQ5ODMyNmRlNDNhZDEzMmY5N2QxZmM3OTgwZTIxODNkMWU5Njk4MmEx>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DYTAwMTM5OTdiNTliNTg2MmQ3ZDY0OWVhM2Q1M2Y1ODNiZjRjZDgzZjl=
lYjJmOTA0ZjQ3ZDJmNGRkODUxNTlhMjVlZmVmODhhZGJkYmJhYmFlZmQyMmEwMjhkNWRjODlmN2=
QyOWM2ZTliNTRmMjdkNjcxNDA4YjVhMThhMThkMTU5NDYzZThiZjFhNTFjYmNkODUwZDQ1OTZjY=
mQ3ZDUzYTQ5ZWExMzJiNTNlMjcxYWZjNTM2MzdlNWIzOTBiZGZiNDgwODRjZWZiMzA0NTcyODdm=
Mzk3MGNmYjIyNGE4OGJjNDg1NmRiYjQ0MmZiODMyMmM2OTQ5MzQ5NWZhMjkxYmY5MzBjMjNjMzk=
1YTFjYjI1NmM1MDc4NTJlOTJmOTc0MTFkMjdhYTUxZDA0NmY5YTM3MzcxMzE0MGY1NGU0YmUyM2=
RjY2NjN2U4MDQwMWEwYjI2MWYwYzdlYzU4NTE1M2I1NDdiMzAzNzliYjk5YTU1MzU3ZTljMjgz>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNzkwZmE5OWJhMjAyYWM1MTFmNjczOWIyZThhNmM4ODA5OTRkZjU5MGQ=
yNGFiMjRlZDIyMGNlNzMzYWZhODIxYWUyYmNiZDY2ZDdiYjFkY2EyMGE2Yzk3ODNiNTVlYjY2Zm=
M5ZDY1NWZmNDViODdmZWYxYWJlMjY2Nzg3ZDhkNDJiOWZiN2U0MTMzMTFkNjcyZDMzMDc2MzlmN=
jQyM2UwOWU0ODA0ZDMzZGM4YTRmOTZkYmM3OTQ5NTM3NDk1MzE0NDQ0ZGZhNThlMTlkYmNmYWEz=
YTMzOGQzZjBhN2UyN2UxOTIyZTQ4ZGQ0M2ZhNmZlZjU4YmM3MjMzZWIyYWYyY2Y3MTdlZTdiYTY=
1ZDJmOTE0NjM0MGU4ZTI0Nzc5YmVjMmQ0MDMwMzllNTdkZDNmMGMwZmMxN2EyMGEwNGRkM2IyN2=
YxOWZlYjRjOWFkMTNiNWE4OTJlZTYxZmNhNDM1ZDE4OTVkODMzMGM2OTIyNjRjMjlhMjY3Mzc2>

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
<localhost:1333?u=3DNzVjYWM2ZjgyYzYyNTg5NWFlOGM3MTczNjNkZjMzMjkzNGMwNGNlM2Q=
wNDI3MjI0Yzg0MTU4NGQxOTJiOGJjZWI0YjA0MWViZDY4NmNkOTA5ZWJjY2U5NjRlY2I0Y2Q2Nz=
hjMmU5ZmE5OTA5ODNhYzljNTc2Zjk4MjI4ODlkYjgwNGVlMDAzMTEwODA3NGFhMDZmMjY0NGJmN=
zgxMmZlNzJlNDk0YjkyMDQ4N2QxNDA0YTU0Nzc2NjdmMmE1NDhhNGIzNDMyNTU2YmI1ZTQ2YmVi=
NGU0NDZjNGRhM2FhYzQwMzU4ZDgwYjllMTIxMzc2NTFjNjMzMjRlMTBiYmQzY2ZmMGNkZGE5Nzd=
lNTYyNDcwN2IzMDFmNmUzNzJiYzJiOTYzYjk3YTdhMTA4ZTVlMGYyYzUwZDQ5YWZjZWExZTc3Y2=
E5OTc0NjcwMGNjNTY2MDEzZDFkOTNjZmMzMDA0NGViNjAyZTQ4OTc5MzRlMWM3MmVjYWNjZDNkZ=
DI3OQ=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DNzc2M2I1MDlhYzgzMDc2YTcwNmNmMmNkZDVkMmJiNGU3ZmVjMmIxNTk=
5OTM4MDFjZjM4MTM4NTc4ZjQ5MWQzZjZiYzk3OTRhYTU2NTFiZGE2NTEyZTdmMjdhNGM5NDJkMm=
Y5YzM4OTg5ODI2NDE4ZDUzODE4YTE0MTI1ZTYzZTU3YzM2Mjc4YmI3Mjc0NzRhYWVjNWI4MTQ5N=
GZiNDc3MDk3ODE3YjNmYWEzYWIyMGRlYmE2NzMxMTEwN2M1ZjgzZTc3ZDgxNjMzNTU5Nzc0YjIz=
MTNmZTM0Yjc1NGY4YjAyZmU4OTNjOGE3MmM5YzhlYjBlMGU4OTRiNGJjYTM4ZDZjZDk2NDZjMGE=
zZjE5YzczN2M0NTlhNTUzNWYyMjRhMjc4MDUxMmU3NzQ3OTRjNDgzZWJiMTY3ODAzN2JmMTdiZG=
MzYzNmN2ZhYjBiNDJkNTdmMGRhMzhkNTRiMGY4MzViODgyNjUyYzRhOGI4M2U4M2UyOTliNTUy>
  [image: Google Play]
<localhost:1333?u=3DYWVlOThkZTU0ZTBlYzQ0YTI0NDE4MGNjOWRiNTNlMmQ1NWVhNjZjMWV=
mMTI5ZDEzOTE3YjllOGJkNjIzODJiOTRhNjM4ZTkwMzFkMTI1OTBjN2I2NDliNTljMjE1ZGE0Yj=
dhYjk3ZWVkMjhiZjkxYzFjNGJjMTg5MzM3YjcxNWI5ZTcxYThlNDc4Mjc2YjMyMmQ3NmQ4ZDdjY=
jZlYWUwMmNiNTlmYzU1NzE2ZDllYWFjMjE0ZWNhOTlhNjA2NDM4OGUzN2JiNTFmZWZlZmY3YTFh=
OTk1YmY1NTIyYTc5MmFkMGY5OGZhZDhjZTlhZjk5OWMxMzdkMzA2Y2I0NzhiZDYzYzRiYTJlOTk=
zNWExNjY1ODMxZjUxNTU2YjQyZGVhZGViNTdhNzAzNGZhMDY1NGEwMWRhYjcxNzA5ZjNjNzgyZj=
cxN2ViMGM3M2JlZDBjOTIzZDcwZDJhNzkwNTAwN2U1ZjkwYjBjZTk4YTcyMDY1MmY4YzVhZGE2>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DNDE3YzY4NDk0MmVhMTcyZDk1OWI1Njc4MGUxMmRlYzVlZTY1MzgxODE=
wMGJhZTY4MmViYjVlZGIzNmI1NmIyMDU3Yjc5N2MxOTJhMTQyY2IxM2I5YzJhNDhkZWZhNTQ1Nm=
Y1OWE5NTk3YWU0MGVkZmFjY2IyOTFkMmNlYjE2OTczZTQ1YmYzZTkyNWJlMDY5NzZjNTYxNzliM=
GJiMWFjMGYxZTZjYjU5MWZmYzEwNWJjNGU3OTg4OTJjYmMyYWE0NjAwY2E0MDU0ODE3NTExODQy=
ZWEwMGNiNmE3MzJhNWRhNmFkNTY5MmRiMDZhZWI1MTk2ZmUxNmQ2YjAwZDQzYWJhNDMxYTQxYTU=
3OWEwNWM3NzUzYjFiZTYxYjgyZjBiNGI4ZjRhNzdkYThhOTk3ZThhMGVkZjNiMjMzZGE0OGJiY2=
U5YzdlOTEzNTg4ZWIyZjEzMWJjMmY0MGQ1MGNlYjYzMDBkZGQ2ZjU2MTFiNGZkYzM2ODk5NmQzN=
WU3Zg=3D=3D>
   Manage Preferences
<localhost:1333?u=3DZDFhMjU1OWI0ZGFlOWQ3MTE0ZjQ3YmMxZjFlZTNkMGY2OGUzN2FmZjM=
zN2Q4OTZhNWI3ZmJiNzQ0NDUxZmNjMjNkODhmMTk2YmRiNGExYjEyYTMwOTNkZGNiYmE4YmQ2Nm=
NlMjZjYjlkMzU3N2JlYmIyMTBmNjk1OWY2YWY4Y2YxODRiNTc1NWFjOTU5ZWIyOGY0ODBhZjZhZ=
DE0N2E3Zjk0ZjIwNDJlNjVjM2JlMDI2Y2IyOWU0ZjkwNzM3MTU1MjA4YTk4YjZhZWQ3OTc2OWFl=
NTY2YjY5MDE4MGRkMmVhMzhiODYwYWViNzkyODE3ZTI1Y2FkY2FlMzBlYzkzYjJmNTI4MTIwYWM=
xMGUwNmQ3YTI4NjlmZWM5NWRhMzEzMzY2ZTM3YTU3MTE1Y2ZiZWZkODg2MzQ2YzM4OTkyNWNhMz=
IwYWNkOTY1MjA4MjM1MzQ4YTEwYzRiZDE2Nzc0ZDExMjU2MDhkNDUzZWI0ZWNjMTdkNmViMWE1O=
GRjNw=3D=3D>
   Privacy Statement
<localhost:1333?u=3DODAwYzRhODI5MjRlZWNmMzdhZmVmMzgyOTQwMDg1OTc2NjY5N2MxYWM=
xZGZmNzlkYzc2NDNmMTdiOTQ5ODU2MzJiOGQ5YTUxZjMzMDY2MGNlODdiMTQ3OWU2ZjhiNWQ1NT=
k0NjkzYTJmZmMwNTczYmUzMzMxODFhNWM2NmE0ZmQxNTFhNjg5ZmRkNjhiNjA4NmM5MDc3ZTI4Y=
zhmYTUwZDUxNjJjODA1MjRkNDJiOTdiZmY3NmYwY2QxMGJiYjYyZDMwNThjYTkzOTFhMzhkOTUx=
Njc4OTAzYjI3YmNhYzkzMTMzNmU3NmQ1YjYwYzZlNjFmNjViYTgzMmQ3Y2JmNGY1NjUyYTFiNzE=
xMTVjYzNhZDhmZjU1YzEwMTNkNTZiZDJiZTJhYjRhYzcwODE2NzdhZDY2ZGU4YmVmYjU2ZjRjZj=
lmYzI1MjliM2M5NTc2ZmIxZGQ2NGRkZTgzMzE5MzJjZDEwOWY1M2Y5OTJlMDg2NjY4ZTYzMzNiN=
DE5Nw=3D=3D>
   About Us
<localhost:1333?u=3DZTAzNGMyOGQ4OTZjNGQyNDA2NjEyMzcyNjYxZjNkZjU3ZjkwMDEyNzl=
hODhiMTNiOGZiZGEzMTVmYzlkNjI0YzI2ZWYwMTE0MzhiMGIyYjM4MDJlZTZjZDJhNzVjYmJlZD=
Q3M2I2MDcyYjlhYTQ0MTkyY2EzZGM3ZGY1NjMzM2Q1ZWYxNGMwMjZjMzVhNzY1ZmJhZmJlNTgwZ=
TYyMmM2NTM3NTViNTg0Y2M1NjAzMGU4ZDUwYmQyYzI5ZDA4YTIyYjlhYjlhN2ViY2I4MTU2NGY2=
OGM2ODU4OTIzOTYyNzg2ZTdjNGMzNzc5MmYxMjZiMmYxZjQyYmQwNWY4NTVlNjg0N2EzZTZmNGI=
0M2RlMTc1MTE3NmVlN2I1MGVjZDBlYzUyMzViMGU5N2IyZWRmNmFkMzMyYzI0YTNlZDAzM2ZkMT=
JhMGEwNWIxMzc3Zjk5ZTNjNWY2NjNkZWJiYjhkMWZkZjg3ZTVkNmQ2YjU2MGVhNmQxY2NkNTFiY=
2Q2Nw=3D=3D>
   Customer Service
<localhost:1333?u=3DZjQ3YzM1MTkwZDMyYzIyYTIyM2I2N2Y2ZmMwMzhjMDBhMmYyN2YzYmU=
wMDU4NDhhMTc3MDhkMWRkNDFjOGI2OTk2OGVmOWNiYjk4NmNhNDFiNDA1NjBjODhiOWMzNTRmYW=
RhOGNhODE3MTY5OGY2NjU1YTg3OGNmMTgzMzlkY2Q4YWYyZWRhNmY5NGNjMzE2MmNkYWNlNmQxO=
DI2OTMyZjcwNDgwOWVhNDJlMjEyYzdhMjQ0MjMyMzU2MzkzNjE5ZTQ3YWJhOTVkMzYwNDliOWZi=
MWU2YmNmMWUxYWQ3NzkxZThmNTYzNDQ5MGE5ZDU4NWQwM2VmYWUwODFjMWNmNjg1NmU0YzM2ODF=
kZTVmOTRkY2U4ZDk4MzkwMDZhNDc0NWRlYjRkMTM3YzRlODlmNjY2YzIzODk2YTNkNTQxOTNlYz=
NjNDA1MThiNmQ4OTA2MzJkZjY3OGQzN2JmNzU5NzdhOTQ5ZWEwZDZlZWUwZTIwZDI1M2UyNTRhN=
TJiNQ=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DZjhlYjY5MjczMjE1MjNjOWFiMGZmYTNhYWQ1OWJhM2RkNzg2NGZhYjM=
0NWNlZjNkZjljMzJlYTM1NzQwZmY1NWJjOTQ3OThiM2FjNmFhZDk3YzA4NmRhNmU4YjcwNjFhZD=
k4ODA2NzdhODJmMjY4ZjFlNTllNzhhZDBiY2U4ODFhNDA1NThkMjY2N2ZmOTA3NjM1M2FhMGQwZ=
jcwZGMyZGY5MGQyMWRlOWYwZDczYWJlNDA3M2NlMTUwN2MyYjlhMzJmMWNlMjU5MTQwY2ZmZjNl=
NjIzZDQwZTA2MzcxYzE1YTA2MDAxMWMxZGJiYjRkYjkyMDFjODI4NGE4OGM=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DZTA5MjBmZTU4NzY3YjJhY2I3NmI0YmFhZDkyZjlkYmE1ZDNjZTM5Mzc=
xMWUyYzEwZWIxNWU2NTBkZDg3MWE1YjgxZmZjNGJiYTRkOWZmNzQ1NDI1ZmMyNGFhNmVlYjI2MW=
M2MzU4YTVkZDQ3N2JkZDVhMzA3YTk1N2QyZTBlZDQ4MDI4NmEwNDdlNjUyMmQwMzljYTIzMTFkZ=
TcxZDc0ZDM0MmVkNTQ4NGE5MDcwMTUyZDYxZWFjYjk0MmQ0OTU1NzUzMzk2ODI2N2FkYWUwZDFl=
N2EzYWUyMGFkMjU5ZjIzMzY3ZmM0MTBmNTIyZGM3NDE1Y2E4MWVjZTBhNzllNTg2ZmUwOGFjMjk=
3NjZiNjI3ZmZiNzA1MmNjMGY0NTU0Nzc5N2ExNWMxZTk4YWRiODA4M2YxNGY1ZWJkOTdjOTUyMG=
IwY2Y2OWFjODM0YTVhYjlhNDEwNWNmMzIzNDkwZjdlMzA0MTQ3ZDlmMDk1YjMyZGFkYTE5NWU2N=
jA3MWMwOGM2MWIzYTE2MzdiNGQ5ZTE1YzJiODY1OGE5MjQ0NWQ4NzhhZGVlZGQ5MTdkYWRkNTUz=
OTBhOTM=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DNTQ2NGE4MWMwOWQyYjgy=
MjFlMzc1MzMxM2YzNDA1NTc4NmNlYjJjZGQ5YmRlMmJjNjI5YzY0Mzc5MTJjYmU0YWY1Njc2MjA=
yN2UxNTA4OGUyNzc5OGU5MmQ3OTdlNTcyOTY4Nzg0ZmY3YWNmMTAyN2MyMTI5YzAxOWZhODcyY2=
RlNzk1OThjZDQ0Zjk0NTIzN2JmOGZkZjRiYzBkOWYwZDU2ZjJmZmNmNDNiYjExOWFlNTMzNjdkY=
TlkN2M3NzI3NGM1NzY2NjUzOGM4YmYxMTZmNjAxZDA5MjJiYjM2ZTlkZWYzZjNjYWNjNjk2Mzk4=
YzJmMjU0MTUxZjBkY2ZhMjQzNDk0YWZjYTRkOTRjZTQ5NTUzOTNjODMyZWU2NjZlYWE1ZjA3NmQ=
2YmQwOTA2ZTgwOWQ0MGRmNTJhMTEyMDBiY2FjMGI3Njg2MTdkODhmNTEzOWJhYmUzMmZkMzg5Nm=
EwNGQ4NjJlZmYzYjI3M2FlMTZlMjQyODU1" target=3D"_blank">
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
?u=3DYzlmMjliOTBkZTU2Y2VlZWZlYmE5OThhYzU1MTVhYTczZGRmMjk2ZDBhZTM5Yjg1ZGRiYz=
UyZDg1NWE0ODlhMTM3YmQ5NDBhOWEyOGIzNjgwOTkzOGYzN2I1OWU4MGQwNDU4NzAyOTgzNWRmM=
2IxNjRiYTE2MWU4MDhhMWQ1YzNiOTJkN2Q1MDM1YTMyNjA5MjExNmYwYWEwNWIyYmNlMDFlM2Ni=
ZWQ5NGE1YmZmMmE0YjIwNTVlMmFjMDc2M2M2NzhmMDBjZWE2MDJjMjdlNmNhMTRmMjMwZDQ0N2R=
kZTRjOThiMzg1YWRjMWVmOGY5MTJjMjg3MDBlYzFjYmQ5MTBmZDNkODhmNjAxZmRhNTU4YjMzM2=
U2NTcxOGMxNjVkMTIwOWU1NGMzM2M0NjYxYWE4ZWE5MzIxYzBkN2IxZmI5YmEzZTdkMWZlYTNkY=
WZmNGM0NDcxMWZlZmIzZDRhYzI4YmE0NTE1NGMxNDE5MGY3YTZlZTkxNWU2" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DOGQ0OTU1Y=
TQ1Mjk5YjQ2NmQ5NGUyMDBkM2U3NDc0OGRiYzFlNzgxNTI0ZmYzZjM0YzQ0OGE1YjA2NGVhZDc5=
YzhjMTYzZTM3N2JlOGZhZjNiYjg2YTRiMTY1ODc3OTIyNjU3MDljMDk2MGE4MzlhNDdjMmU1MDI=
yNGExN2ExMzJhNTFhMmIxYzQyNjZlYWQ5MTFmN2FhODFjNzBlOGIyNTQ5MWNiNTkyMzZiYzBlNG=
NmMmMwYTE5NDZlYTlkZTRiZmMxMmI0ZGRjYWQ1NGRhY2FiNzEzODI4OTlkOTkyZGNkYWExMjNhZ=
TI5ODk1NDcwMzQ3ZDEwMzc2NDhlMDQwN2U4ZjY3ODMxNTFlYTJjNWM2YzdlMmMwMjk4ZTMwNTFj=
M2FjZDk5ODc3YzNiNjMzNThkYjQ1ZGMxNmQxZGRlNDc1YzM4ZjQ1MzcyNTVkYTliMTVlMDhhNjI=
0ZjEyZDhkYzQxMGQ4ZGRlNjBjMWY4ZDcyMTA1YmIyZTNh" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DY2ZjYTY=
wNDgyMmQ0OTEwZjNlZDM0YWNhMzNjNGNlMjNiMzA4MDA5MjBlNTlmNTFiNDA1OTgyNDhiNmY1YT=
ZiMGVlODg0YTRkZmQzYzc2NzEwZTk0MThjN2Q4N2VjN2E1MDRkMWYzMGJjYzlmMjZlM2U5M2JkO=
WFjNDU0ZGNmZmRjYzFhM2ExN2ExZDY3ODUwYzUwNDYyZGU4YjYyNTA0ZWZkYTI4OGQ4YTJlNjFh=
MDdjMjc2NWQ1MGZmMTJlNzJhMTU5MTY1YmQwNTcwN2EyZmEzYjA1MGMzYzVjNThkOWYwN2NlNGR=
kZjYyNGM2NWFlMzFjYmZkM2E1YjA2YjY4MzY2MDg4YTJlODBkYjRhNTkwYjFmMDM1YmNhODRhNj=
gzYzM1MWRjZDY4YTA5MjQ4MGE1MGVhNDcwODEzMjQzNjM0NGZiNWZkMTg2YjhlMDhlYzkxNDUyN=
TZiMWY3M2NjYzI5NDk2OTgwY2FhMGZkYTAzNDM0YzU3NzYz" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DMTY0MDAyZjIx=
NWM5M2M4M2VmOTRhNjIyNjYwMjYxMmM1OTYxMjMwZjJkMjc1MjI0MTcxZWEyYzQ5YTU1ODE3NmN=
kNWIwZjM3M2RkNzM2MTMyNGJiOGMzODYwZDEwNGNmZGQ0MDgxY2JlNzg3Y2U5YzUzYjAyNDdlYz=
cwNGI1ZDU5MDMzZmUzNGI5Y2M0MzNmODE2MjE4MjUwYmIzZjFkOWNiMjY5OWY5NWI2MmE1ZWZhN=
mVjNDVlN2VkNjU3ZGViNjcyYmM4YWZmZDc3ZDFhYzAwZTA5YjMyNTQ0MTc5OTc3MTA3OGM1OThl=
YmU1OGEwZjBlNjk4MWVkOGQ2MjMwNDI1MzM1ZTk2NDg4ZWRmNWU4YTllMGE0NmEwNWM0NTg2Njd=
lY2Y1N2I4OTE1ZDc2OTFjMWE5MjYxMmRjM2JmYmE4ODM4YzY1NWRmNTQzMjhkNDJhMzQ5ODc0YT=
k0MTE3YjQxMzZhMTYzMTA0ZTVkNzhmZDUyMzRkYWRm" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DOGU3NDY5NGM2ZTQ3N=
zI3NTVhZTQ1MWY4NWI2YzQ4YTIzMzZiNjkzZGRkMWRlMjhkYWEzNjkwZDI5YmJlYWRkMjQ5MGFm=
MGMzNzQxZjNmNjYyYTY2M2E5NDViYTMxNDA4Y2RjYmNiN2NlYzkyOGQ0YjVlY2JhYTVmZjY1MGN=
iM2FmZDQxNDk0OWU5MzIxZDZlNTk3Nzk0Yzc4YTliODVjODc1Mjk2YzBlZjMyZjYxNjFiZmFkZT=
Y1ZjU5ODUyN2IwMDUzZThiNzRjNGM0ZTI1NjU5YzgwNWQ0YjUxOTE3OGQ4YThkZmU5NTI5ZTIzM=
GE3NGU2ZjdiNmNjOTNkMTgzOTVmNzM3ODM5MDliMmRhMGZkYjFmN2Y4OWFkZmQyOGJmZjdmZDUy=
NTE4MzAyNTAyYjg1OTkyMzA3MTk3NzVmYTNmOTJlMGVmM2VlYzBiYTU1MTZkYTM1Njg3MmZhYzg=
0ZmM4NTkyNjk1N2U2ZjliMDM2NzU5ZTA2MDkx" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DMjlhNDdlMzM3M=
TU4MzAwYjg0MmE1ZjJhOWVjYzJiYTU1ZDU1ZjQyMmIyMzZmNzMxMTM3ODA3NTEyY2JjZGNhZTdm=
MmRhNGU5MjExYzQzMTgwYTU4MGQyMzA4NGJlNjRhN2JiYzdiMDkwYTZkODcwMjEzY2QxMGMxNzg=
zZDA3ZmY0OGQwMGViOGQ3ZmFjODFkMDQ4MjJjMzU5MWU5NzcwYWVmNjkzMThmYjg3MjE2YzJmMD=
c3MzZkYWFjM2NjNWU2YWE5YTY2NDI4ZmYwZGRlODRhNjc1NTRlZTczOWE5Mjc0ZDhhM2VjMDZhO=
DlhMzVmYTgzMTYwYTFjNjVjNTRjNmMzYWIzYzRhMzhlMDBmNTc2ZGIyZDcwOTlhNTg5Y2U2YTM1=
MzQ4YjBiN2EwMDRmMTExMjViODI0OTc3ZDMzMTMwZDlhMjAzNzk4ZDhkNWVlYWNlY2FmMDJmZTk=
1NmM4NTQzNGQwMjgwYzQyMjZiNWRlODQ3MGE4M2Jj" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DOTUxYzF=
jM2Q0MGM3ODA3ZDdiNGU0ZDVjZDFiZTAzMDhlZjhlOGZkYjQ3MzBjNjMxYWExYjY1Y2M3MmJlOT=
ljNTMxMzQ2YWFlNDM1MWZhYzJhYTk4MDc0OGM5NGE3MGM2Yjg3ZTJkZjU1MWEzOTVkNWMxMmM2Y=
TgwOGJjYzQ5NWVlMzBiYTRlMDk2MmE3YTk5NDc1ZTNiZjg3NmYxOGE3YTgyZjQ5MmQ2Y2Y0ZmU3=
NWJjMDE3NjU1NDZhM2UyNTA3Mzg1ZjcyYjg4YjBjMTM0NzJkNTc2YjBmY2FjNjczZmFiZjk1Nzl=
kYTZkZTJkNjMyMGRmM2E2MTEwMzJmYjkxZmY5MzI3ODgxOGM1ZDg3MTY2MGIwM2Q4M2IyOWY1YW=
IyNTRhZjkwNGY4NjZjMGMzMjVkNWJmYzRhNzc1NzMzZDc3OTBjOTY2MWNmMTU4MTI5NTQ0NDRkO=
DgyNWJkZDljOTc3YTc3MDk2YzQ1ODA5ZGQyOWYyNjdiOTA1NTVkZA=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DYmMxMjk3OTBlMzM2ZDA2MTkwYWY1Mz=
NhZTNlNTdhZjRiZGZjZWNhNGM1NzExYWE0ODU1YTg2MDI4MmIwNGQ3N2E2ZWQyYjI1MjNiNTlkM=
zAxNDJlMDBjMTFkOTZmZGVjODMzZWJhYjI4MjAxMWMwMWI4ZTVjNTFiNzQzZjFkZjM2YmRmZDFk=
Y2EwOGExYTU5YmJlYjc0OThhNGMyZDQ4OTc5NzZjMGYzNzRmYzM2MzBlMWNiN2MwZDliYjRiYzA=
xODQ3YjA2ODIyMDkzM2IzYmU4MDc2ZjIwZmViODg2MjI5M2I4NWZlMjU2ZTZmYTQ4NDJjZmE2OW=
NlOGYxZTViMzI2ODNlYjUyOTdiNDU1NDQ1ZWFlMzM2OTY1ODc0MWNhMThkNjJmNjI3MmNhMDQxN=
zI3MGY2OTgxNjNkMDVmNzY4OWQ3ZGRhYTlhYWE2NDhkZTUyZmVjMGNkZGMxMTEyYTM1YzZmMzlm=
ZjE3NTYwN2Y5MmY3OWYyZWJk" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DOWE5Y2NhNTkyZjgzOGQ2NmM4MWRmMT=
hjOGZjNzA3ZjRiNTUwNjI1YmQ4Y2U0NGZjM2MyNmNlYWMzMWFiNzI3OWJlMzM4MTZkZWQ2MTY1Z=
jhjYjJjYzhiMmQxOWUzZDkzNmEyMDhjMmM0NmYyMGEyNDM3MDVhMTNkMDE1MjZkZDI2MDIyOGI3=
OTIxY2Q5Y2FlNzhmYjE1ZDkyODAyMDU0NjJkODhjZDIzZDMxZGY2ZTdlZjkxNjVhMTZiZWRhMzU=
2MWQxYjg4NzFmOGExODE5NWJhYWYyYjViYjM5OTBjNDhjMDYxMzE2YTAwYTE5ZDI2OTA3ZmVlYW=
I4MmNjMGQ4ZjNhMDkxNmEyNzljMmRiNWFmMjk3YjNkYmFkOTVmNGI3OWVjZDM5N2JjNzI3NmUzM=
DM2MDYyOTA4MTJiNWQ5NmI4NjAwOTE5YWI5NGI3YWRiZmQzMzhlMDIzMzU3YjU2NzA5NDAyZDc2=
MzE0MDIwMDYwNjY4OTdjNWI2" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMmRjNzMyMTZhOGJj=
N2Q3YWZhZWM5NThmZDE2NjdhM2IyNzQ3NGVkZjViOGJhZDI1NjlhMDdkMTU5M2VhZTQ4NmMxOTk=
5MjFkZjUyNWJjYWNmNTI4NTQ0NDA1YWU3YWI5ZDZmMTlmYWQ1ODVkMjczZjJhMWFmNGY5OWYzYW=
EwMTEzYjMyN2QwMTUyNmM4MDc0NzIwZDU4Zjk2OTU2MTJiZmM0NDIyMmI4YzMyZjhmMjU4OGZkY=
jFiY2VlMTdlMTM5NGMwOTFiZTNiMDMwYjAxMzY0NWRjZDNhYTgzN2I3YjA3NGM1NWNiMjU4ODRj=
M2NkMzllZjFkNzJlNjIwMjQ4ZTYwMTdlNWNjMGNhMjU4NzNlMDgxMmM0Yzg2ZDYzNzRiMmJmMzd=
lNWQ2NDk1NzY5NjIyNmZkYjA3ZGU0ZTAzMzg0Y2I1MTk5MWRhN2NjZmYxMTY4ZDU5MTU0NWJlZT=
dhMzBhYjRmYjhhODRiOWRlYjRjY2EwYTIwZTQxZDJmYQ=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOGM4YjY4NDQ2Yjdm=
NDk1NzA5YjNhNGQ0ZWZlNzEyYTRkODEyNTI5M2Y0NTk2Y2Y1MTNlYzQ5ZjlmNmE4ZGRiZDNlNjh=
hOWNlZmIzZGI0ZGQxY2NmMTY0NDJlNjMzMTMwYTNiYjg4MDM0NWZlMGY1ZTg4ZDYzYmFmOTJkMm=
FiYmFmNDkyMTg0MjIxM2RmNTljM2MwMmNiNzIwNjQ2YjJiZDNmOGJhY2IyM2FlZWZmNGJkZGM4Y=
TIyZmMxY2RjN2ZkZTYwOWUzODEyMjJhMTdmNzcyZGVjZThjM2IyMjQ2NjlmNjE0ODE1YWZlOTVh=
ZWYwZmMyNGE2ZTc5YTljOGRmM2RkNDY2NWQyMWQ4NjUzMzk3ODBlNjE3OGJjYzU5ZmI1ODhmY2J=
iMzMyODMwZDJlOTM2ZTQ4YjljYTQ3NjlkMzE4Mzk0OTU2NjhjYTUxNGRmYjdkMjJjMDZkMWY0Ym=
VlNjcyNGY2Mjk2NzMyN2M1Zjc3NjkxNGUwNmQ2OGQ4OA=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMmVjYTI1MzQxODI1=
ZTAwZjcxNmFhNmQzOGMxYjc4ODE2NTlhODRmZTRlYmY0ZGQzYmE0NjE3NjQwNDhiNWJlMzJlNWI=
wNjkzYjRiMzdjM2JiM2VlZmMwZjk5MjgzN2FhYzM1MGNhYThiYmNmMmI5N2ZjNDNmOWRiMTkxMT=
dmZmU5NGY3MjdhNmMzYjljM2I0ZjUyMzZlNmY2ZjIzYmYzNmM0OWRkZmFiNTRhN2NhYzZmNDU0N=
TdhMjhkMDk3OGFhZTMwYmFiOGM1YjNlNDRkMmNjNWFiNjU4NWNlMjliZTY5OWM2ZWM3NDA5N2Fh=
ZTI4YjA3MDM0MzExNTYxNDZjZDYwNzdiMjY3YmU5ZjlhODNkNDU1MGU2MTYxNTFjMTBlN2U5MTc=
yMzVhZDA0MzcwM2Q3ZDNjNGE2MzRmNDhlYTAyMzdjMWFkYWZlOWM0NDViZDM0MzkxZjQ4YWI2YT=
cwN2Y5MWE4NTFkNzRjOTQ3NjJhYjk0YjZlZWM0NjE0Mg=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMjZmMzRkNzY1MjA0=
ZGY0MjA5YTE1NWQzZDVhZTI5NmFiYzhhNGIwMmYxNWRjNjFlM2QyMWE4MTFmMDMyOTJmYjlkM2Y=
yZmI4MmE0ODBiYTc1MDNkNjc2NmY3M2ZjNTcyMDVlOGZmNzc2NGNlZmZkMWMwYWNmNzVmZDk1Mz=
FhZmFiN2ExYTI5NWIxNDY2OTkxOTU5ZGVjNjQxNDQzMzc3NDUyNWVlMTBjZGM2ODNhNWYzMzlmN=
Tk2MzQ5OTBkZjBlNmMyN2M5YzFmODNiMmFkYzNmZjhkMDRkYzgxZWVlMGM4OTE4MjdiMDQxM2U3=
NDY2MTgxMGZlYjg3NmVmOTcxMTc3MGE4NzM3YTYyMzBmZTM4NWRlYmY3YmFjNjNlNGI5M2MxM2U=
3ZmE0YTA1MGEwYTUwNWU4ZDRlNDc3NzUwZDgyMGRhMmM0Njk3NDBjNjY1ZTBmNWMxNmUxM2JlY2=
Y1ZWFjN2I3ZDNlMDMwMDNkYWM3NmMxMWVmYjczZGVhYQ=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYTYxMDBlZWI2MGMwNG=
M2NGQ4NmVkNmY1NjJlNzA4ODg3MDA2ZmVmZDE0ZjEyYmI1YjhjOGE0YWZlZWU3MzY4ZjRjNjlhN=
WVjZjRjZWY1YTI3MjJmNTAxZTNlOTU4YjE2YzZjZTNiNWZmMGRlZmI2N2YwYWQzMzlkODcwZDU0=
MTg0ODhhZmY3OWQwYTg0MTEwNjkwMGM0NTEzYWEwODliYTI4YjYzNDZiZTg4NGE2MWIwZThmZDd=
lYjcxMWUzYWFjMDMyOThhNmQ0ODUwNDg0MDM4N2RhNGNjZmNjNmMwOWUwZGM2NDA0OWZkYjg0Nz=
A0MTAyNjk1OWYxNDQ3MzQxOTJmYzFlMDE0ZTAzZjYyYmI0OGJhZjY2YzY5YWUyOTJiNjg4Nzc1Y=
zFhMzRjNGJiNmFjNjE4ODgwOTg4OTNkNWM3ZGZkMTk3ZGE1MGQwYmUxZjk3YTMxMDY2MTMxYjZi=
Y2U4YmY4YTAwMjJjOWIyMGRiYjBmNmI4MGM0YTM4YQ=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DNWM0NWMzOTNhMTc1=
MjQ1NGQ3MGI1NmJkYzhmNTgyZjYzYzM3NmM1MWYwM2VlOWM5MWRlN2ZhZDNhZmQ0YTA5MWFjMjg=
0NjZiY2Q0ODA4NzcwYWY4Y2FhYWExNzA3NjU1Mjk4OGZmYjdiZDljZWY5NjJlYmY4ZmI3OTAzOG=
U5NDMwZTgzMjBiN2RhM2ExNDNjNGEwOGY3ZjNlNjRhOTM0ZTdjZDIxMzgwZDIzM2YzMjU4ODcyN=
2EwYzk2YWM4N2MxYzJiNjliOGM5MmNjOWY2YzJhMTllNzA0MmQ4OTIxNTFmMDdhMmRlZjM1ZTRl=
NzMyZTZkMDQwNzhjZGMzYWQ=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DYTA0MWZmOGE0NjJjZTBiZDE5MDQ3YzkxMTNmY=
zMyZDdmYzVhYmI2NDJmMTEyZDFjOTlmOGEyM2VkOGUyOTU3MWVmZTA1M2I3NjNjMjBiZDc3NGEx=
NjllNWY0NGVmYmRhOWQyMzM4YzEwYTYzYjZjM2E2NjZkOWRkMDMzZTFiODMwOWZkNjRkMThmYjI=
0ZGI1MTUwZDMyZjQ3ZWU2ZDQxODhiYzUwZjVmNmVmODcyODNlNTNjYWM3MzAxZjUxMGJkNzhjNz=
hjYzllOTg3M2Q1YTI1MDhhYjlmMWMwY2FmZTNhMTJkYzE1ZTE0OWZiM2ZhZTFkMDhjZWE0MjZjZ=
DYzM2FmMjM5YTM4NGU0OTI3Y2YyZmQzODU4NjE2N2IzNDgzZTk0MTYwZTRhY2RjMGM2NWQzNjFi=
NTEyYzgxNWI5YzhhN2FkMzY4NTlmODI5ZGJhZDlkYjljNjM5MTg2MDRlNTMxOTdiODRlODIzMzg=
0NmY3MjZjODkxNmQxYTRlNTFiY2Q4NGY4MGZkNWYxNjExYzhhOTFmN2NmMWU5NmM0NzY0YWRhMm=
FiMzE4ZDU5N2ZkMzQyMjIxODY=3D" style=3D"font-size:12px;line-height:134%;font=
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
