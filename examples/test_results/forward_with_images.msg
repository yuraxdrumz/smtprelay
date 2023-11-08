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
From: localhost:1333?u=3DZWE0MTYwMmJjOGExOWMwMGVhYWMyOGE2NWExNzkyNTI1MGUxOD=
dmOTIyODQ3ZDY4OGU4ZTQzZDQxMTVlYjU3NTEyNTYyZjBhOGFiOGNm <mail@eg.expedia.com=
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
<localhost:1333?u=3DN2M4NWMyYjUwZmY3NzFjN2NhMGZjZGRlZTcxZDhmNWJlYTlhYzdmYjh=
hNzJkZGVlYjg1M2U5YzNmYjlkZmVkZTlkMmNkYTEzYTg0N2EyYWVjNzgyNzE3MWM3Y2M4YjA3OD=
ExZDBmODcyNDNlZWI3MDI3NWE5ODZkNjAxMDYxYWU2NTY3ZDUyYzE5MzUxNDQwNTExYzEzYjMxZ=
mMwZTI0NTFjMTk3ODU4ODhiYzY2NzBmOTAwZDAwNGU4Yzg4NDdkNDExMDllYzdlNTgxY2RlNjc0=
Y2FhOGYwNWYwY2Y2OTQ3Y2Q1ZmMyYTY5M2IzNGQ2MjJiNWIzOWE4N2NiYjM5YTZkN2IzNDM3MTM=
zNTRiYmQ5YWJhZTI0ZTUzNWQwNWQyNmI3MTIyODJkNTllZjkyZWExNGQ3OWNjMDUyZDVhZjE5OW=
JmZWJhNDA1MTIxYWRlZWQ4ZGM3NjAwYWQ2ZDc0OGU5OGVkMDZhMGU5MDM5ZGVmOTUyNTJhNzli>

* The Travel Edit
<localhost:1333?u=3DZTI5ZDE3ZTA4MTgwNDc0MWQxOTdmMjIwZjAyODA4OWEyMDg5OGQ3MTY=
4NzY3ZGRlZDQyOWQyN2EzODA4ZDJjNDUxZjIxNjI2OWNlMjJkMWVmZjRmOTE3NjA0ZTc4M2U1YW=
EzYTVlZTY5OGQ5YjgwNDBmMjlhMmYxNTU0NDU0OGMyYTg1MDE0YzgwZWUxMzBmY2M0NGM5ZmU2O=
DJkMDVkMDczODliMDQzNGEyZDViMjAyMjczNTAzYjQ0OGQxZTI5Y2E3ZDc3ZWJlZDA4NzAyOWFl=
NTdjZDQ1NjM3NDkxOTQwMWRmNmQyMDJjMGNlY2RhMDc2ZDk1MjE2ODk5MThmODg4Yzk0MzY0Y2M=
2NmJjZmZmOWI3MjcwZjZiMWQzMmUwZjI4ZTUxODcyZGM5MTZlM2E5ZGQ5YjgzNzgyZDcwNTgxYz=
k1ZGUzZTE4ZjAyZTYxZDI0NjQ1OTEzMjU1M2E4ZjA1YTA5MjJmYjdkOTFmNGJhYTk5MGU1MmQy>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DMzkxNjUzYmRmOTk3YjkxMDEyNzAzNjQ5MjA5OGNiZDljMTc5M2QxZTc=
wZTgwMTQxOGE5YmZlNjhkMjBkYjhkNjA4ODk2MWFjYWNiZGYzYjllNzQwMDk5ZGJhYTNhNDgwZj=
Y3NDdmODM4MjI1NTNjMzUzMWMzZTQ3ZWMyMGZjYjVjOWQ3ZjliNzNhNWUzNzgyYjc3NDJiMTlhO=
DEzZDNlMjU5NTExMmMxNTgzYmFlODA1ZWRkNDlkZDVmYzM2OGJjZGY5MTZmZDE0ZDM1YjlhMDMw=
NTU5YzE5MWM1YzEwNTFhNjAxMDcxNGEyODZmZmZiYjFkYTcxNWY0NWZiZjU3ZDg4MDA2MmI4M2V=
mZGM2Y2MyNTg0MzFiYWZmOTY3MmUxNzQ4ZTM1NGIwMjM3MjI4MzRjMzFmYTgwMzMxMDY1MjA0Mz=
RiOGRiNjI3NjdlYjk1ZDhlMjhkZDY4M2NiMmIwNDhmMzg2Zjg2MDFjOTBjZDE1MTM5OWFlNTk4>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DOWIwMWNjYzNjOTUxYzNhYWI4OWE2MDdmNWU5OWE2ZjRkOTYzMmNhYmZ=
jMDNlNzg2ZDhlMTYyNTdhNWM1YzY0OTIzODgzMTQzNDY1ZjBhZjM5YzRhNWM5OGE1YjRlYWE1Y2=
RmZDJjNDY2ZWU0M2IwMTAyNjUyMzAxNDA5NGRmMjBlNGZmNmVlYWY2ODYzZWVmY2I4NmMxYTc0N=
jJjNWE1NjMxYzZmYjFkOTc4OWI3MjhlNDc1MDg1Yjk0MTNlYTM4MzE4ZGIzZTZmM2M4N2YxYjI5=
YzNhMzgxMTUzODQ0MTJkOTA4MzQ2NDU1NDA1ZTllNzdkYjk2MGU5NTM3MTU5OGE1YTkyZTA2Nzk=
xOGYxNGM1YzVhZjZkMTRjNzkzMzcxNjI2ZmYyZDkwNTBhMmMxNjAwMDYxZDY4MjgwNDJkNTk3Mm=
VjNjllN2I1MTNiOGViM2Y0ZjgzZDFlMzEzN2ZiMTQyNjUwYzAwODkwMDRhYWZjNTFjMGFkYzMx>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DOThiYmE3ZDZmMDNmZWJkYjBlZmVkOTQ0N2ViZDdhNTc0NjJmNzA2ODd=
lN2IyMzUxOTY2ZDUyZjdhZTM4OTUxNGM3MWI1OTBlN2M3YmMwN2MwNzczZTVkNmFiYTAxOWZhOT=
E2MzBlY2ExOWNkNmI2MTEwMDU5ZmMzMDY3YWQyNjc3MDFiY2Y1NmQzODUwODAwYWViNjNhYmU4Z=
DU5MWRmMDI0ZDA5YzNlMWMzYzBkZjU1ZGU3OTczODU5YTlmMGIxYzI0ZDA0MTFlYWU0ZWNlM2Q1=
YWYxODVhMTIzNmU4NzZjZTlhNWQ5NzY3NWMzNGI1M2IxMWIyZDUyZWI3MjQ2ODBkZTZjYTBkNzE=
zM2IxODFhMDM4ZjYxZTMxODhkYzFlOTI5Y2JkYThhNTlmMTc4YTM1MDVmZTQzZDQxN2Y0MjM5Mz=
IzODM4N2Q3ZjkzZjI5M2JiNzU4ZmI1NGM0NDVmN2Y1NDNkNjY0OTY2ZmExODM4YWQ5MWVmZTRh>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DZmVmNDE4NjA3NDdlNzk0MzQ3ZWI2YzMxYzhmOWU0M2Y0ODBhOTE2M2Q=
zODJhNTQxMDQyNzczNmMwY2RlM2EzOTM0MzNmMmIyZmU2ODBmNTUyNDdmYmUxNjNiOGY5YmUwYj=
BjYzc3YTRiZmY2MTVkMDFjMGY5Nzg1YzJkOGI2ZDllMTFiMTM3NWVlZDE3NzllMTgzYmQwMTIzN=
mY3MTIwZWUxOWNhMTY1ZGM3NWJlZTEzZTI5NGQxMjFmN2QwMTlmOGZlNDkxM2ZiNGIzM2ZkMmU2=
NWI4Mjg3ZmVmOGEyMmE5NzZlNGNjZGRkMDY5Y2U3YWJjMDdjNDAwN2RhYzY2ZmRlNGQwMjg1NTU=
3YjFlYzhjYjZkM2E0YWUzMGViMWJhMzYyNWVlMDVlNDdkMGRlOTE4YjMyZTI4NDE1M2UzM2JjNW=
U3ODMwNTE1MGVjNzYzZTBjZDUwNDU1MGQ4NjBiZjZiYzdlZDE3OTlkM2I2MjIzZWE3YTFlZmEw>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DOTE1YTljOGU2ODdlZTY0OTVlOWNiNDc2OTdlYzkyMGI3MjdmOWJmZjh=
hYmI3YTVhNzE0MGJiZTZiYzJjN2FhZTYxNDBkODM5MTJhZDE0ZGUzMDQ3ZjYwYjE4N2IwNWM5Yj=
M1NDA5YWY3ZWEyNTU4NzQyZDY1YmJiMDI1ZTFlMzJiNjEwMzkxZmM3MTE2NmVlOGJkZGZhOGRmO=
GUxMmU1MmZmZjg5ZGNmNGVmNjFlNThiMGQxZDZlMThkZGE2OTEwZjUzMDA4ZTQ4M2RlZWU0ODkx=
NjEwZTUxMmY3NjBhZmRkNTJhYTE5ZjE3OTg0OTc5OGMxYzk4Y2Q3MmY1OTk3OThiODNkYzE3ZDg=
0YzE0ZjQzNGQ1ZDg3OTU1NGJmZDFhZGU5MjQ3ODM2NGRmYWFlY2Y0MjYzYmNiNjdlNWRlMjg1OT=
E3NDBjMGVhNDRmODkxMjVhNDIyOTMwODBhMDA0M2EyNTExNDM4NDA0MGU2NjlkMDdjNmMzYTkw>

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
<localhost:1333?u=3DOGNjMTkzNGI0MzllYzBjMjBjM2Q4NTdjNTI5ZWVjY2MxYzI4Y2U3NzB=
hODY4MjczNDg4NjQyYjg3NzFiZmQ1ZTVhOWNmMjNkYjViZjJmYTg0MzVlM2RkZDgyYWNhNzdkOW=
Y2MTRiNTNhZDEyZGJhZDBlZjc2ODQ5YzRjMmZiZjI0YWIxZmMzZmIwNzk4YzQwYjBmMzliMDAxN=
jZhZDQxMmRhNmFjZjQ4MzQ0ODgwZDBiZjRiNGIyZTVmNzdjMzFlNGFiYjRjNWFmY2RkMzI0YjZh=
NWFlNDg0NzQ2ZTA4NzAyZmVhZTkyMTZkNjQwNTBjMGM0NjkyZWVkZDA4YjdkMzBmMjVlN2ZmOWY=
1MzU4MDNkZjZlOTliOWRkNTkzNGIzN2RkODM3ZDg4MThkMmNiMmQ3ZDdlNjk1YjNkMGVhNzczYT=
A3ZDc1MTRiM2E0OTAxMjhkNjZiNWE0MGU5ZTc5M2U2OGJkNTgzZDcxYjk0OGIwMjQzY2I0MTI1Y=
jYzNA=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DYTZlMDc5N2ZlOGJkNTEwODU5YmE3ZjY0MmI0N2NlN2VhNzEwMGY5MjN=
kODdhYzIzNWNmZTQ0YzQ2ZDcxMGE4ODJiMDY0OTE0NzZhNzBlOTgzMjhiZDJkNmMyYjY4OTY0OD=
VmNjU4NjcxNDQyMTFiN2M4MWFiYWQ2OGJjNWQyMTNiYTBlYWUyNzczYzdkYjc0Njk1OTM0ZTAxO=
DdjNWQ0MTY3NTQwMzJlNjdhM2FkYTJjNzM1ODI4NGI1MjQ3MzA1OGNhODYwZDFlOGQzNmU4N2Qx=
NjRhNzc0NjU0ODA4NWU2NzYzNGFjNGRhZDRmMGIxMGY5OTVmNGYzNmJiNTgzYjI4YTIxYzE5MzU=
zNzc5OTE1Zjk2YTFiZTVmZjJlOWM0MWI0ODFmZDcyNmIzMmY4MzBjNTViMmFhNzRjODQ5OGZjN2=
RjMGI4YTlkM2RjMjc5ZjBkY2Q0Yjc5NmQ0ZDczNTNiMDA2N2U4MTAxMmY4NzljZDQ0ZWM4NzBl>
  [image: Google Play]
<localhost:1333?u=3DMmYzNGQ5NjM2YWUxMDJiNGJmN2Y3ZjRlMzA3NmI3MzZlNzg5Y2Y4ZDF=
jMDQ2NTdiYjg0YjRhYTkxZDdlMzhjNGQ0OGUzOGI1YTM4MDQwNjA0N2ExMjRhYzhlZjYyZTk5Zj=
dlMWEzMzdjZDc5OGI4MTE2ZDJjOGQyMzk2MmNhNjdlMTIzZDQ3MGFlNzUyN2JiNWVmYjI0YWEyO=
GM1ZTc1Yjg2ZTNkZjllM2Q3ODA0NzJmODJjMjllOTg1Y2U3YTE0ZmI3NzdmMjQyMWFhYjU5NGY0=
MDFkNmFjZDkzNGNmN2JkNDRmMGY5N2YxMjZlZTMxODZhMzAzNDMzYWQ3NGYyYTYxYTNlYmI1MzA=
2NTJiNmZlYWZjYWYxNzUyNzEyNWIxMmUwMWFlZjMyOGVhZDgzM2YxOGQ4ZTc2MGRiMzNmYTVhOG=
M5ZWZlOTMxMTY3ZTIwZTYyNTM0MDQyYjhhYWE3NDBkM2U4ZDVmMDI1MTEzYzlmNTk5YmRmNTYz>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DNWVkYmFiMTA2ODdjYzI3ZDRjZDA0NWIzMGU1YWU4N2NiNjM0M2E1NGU=
1NTYxMzExNDhmNTA4YTEzZWZmNGY1YzEzY2FiNjkzY2RkYjc3Yjg1M2JlNDMwZjBlNDNjNDFhMW=
RkZWMzZDRmMDE1YjljYWEzN2ZmZTk4MzRiMjY1ZWJjNTg5YjAwYjRmZGZjY2ZkYjEwNGRiNmU3O=
Dg3NTdiMTg4ZGNjMzI0ZTBjMjFhNzkzZWIxMzcwZDU1ZDY1NTgwMjg3MzI5M2RjZGJmMzQzMTE3=
ZjcwMThmODFhNmIzOWI1YjE4OWYxZGFkN2NhOWE3ZGM2NWViYmM4MGI3YTA2ZTcxMmFiMWFmMjQ=
2Yjg4ODJhY2ZmNmMwMDM3MzIyN2Y5YWIzMmRkODA2ZWMyYjdmNmQzMTg4YTQ2MTFmY2IxYTAyMD=
MzZTdjNzdmMmQ3Njg3NzU0MTQwNjVhZjNkNGRjODM4ZGM3YTE3Y2NmZDM0NmQwN2E0NGZmMTAzN=
2E4ZQ=3D=3D>
   Manage Preferences
<localhost:1333?u=3DNjRhMDI5ZmZlZmQxZmU0ZTMzOTI4ZmZiOGFiOWUxMTU0ODFlZDcwY2E=
3NTczNDE0ZDgzYTkzMmZkNTBhYWVhMzhjYWU4MTZkOTNmNGQ1MDNmY2IyZjMyZGJkZjU0NzQxN2=
IyMWNiZjZjN2UzZmFiZWNmMjQxZmViMDUwMDI4OTM0N2ViZjY5NGMyOGRmZWMyZjc0YTU5YWFhM=
WEzYzQzZTVhYzdiYzEwN2M5OGE5ZTU5ZWM3YmZkMDk0MjNjMDIyYjJlN2ViZGM3MjFiYjUzZDBk=
ODA1ODRkZGU0Y2NjNDE5MDZhYTM5YWRkZDBjZjZiNjUyNjdiZWJhZjhkZDY5ZjE0ODg0ZGE3N2U=
wMTNjZTZhYzZiMmZjNjcxMDY0Y2U5NzMzYTdmZWExOWY4NDI5ZGJmODY4YWMwY2I2MDBmZjVkMT=
YyM2Q1Njk1ZWI2NTNkYmVlNTdlMzBmZWY3NjRiZDJkNzRjYTc0ZTVkZTA4YTRjZTdhMDY3ZWRjZ=
jM2MA=3D=3D>
   Privacy Statement
<localhost:1333?u=3DMTRiMWRjNmJkZmZlZTY3YThiNzc1OTNkMzE2ZGQ4MmFkMDYwZDIxNjM=
zODc5MDc0M2VjNzgwZGFlZmQ2MzRkYmQzZjI1MjkzZTZhM2ZlMDMxZDU3MTlhZTdjNmU4YWEyM2=
IzNTNjYWM2YWM0YjJlZWY4NDQxZTA2OTdhMmMxMzYyODU4NDMyOTIzMzllYjcwMDlkODEzZTM3Z=
DdjZTM5YzIzY2Y3OTg4NTc5YjA3Y2YzYTdkNWY2Y2U0NDQyYWZlZGE4NTY0NjI1NDI5YTYxYmQ3=
YzQyMzIwZmE1ZTkyMjA3ZjkxYWIyMWRmYTVmZTJlMWMwMjliMzE0Zjc1MzIwMDIwZDYxNThjZDd=
iYzIzZDAzODllMDcwOGZjZTZiNzAyNjE1ZjlkODMxYzQxNDBhMWY4OWY2MTQ2NGQzOGMwMThiNj=
k4YmNiMWIwMDJkODYzMDYwMmM3NWRiYjY5OGE0ZjUyNGNkMjU0MTZiNWZmOTk4N2JmNjg3ZmNiM=
jQwMA=3D=3D>
   About Us
<localhost:1333?u=3DNzNkODU1YzEzYzU0YzJjMzk0NWRjNjRkMWIyZWY2NzI5Y2EzMjdiZmN=
mNTRmMjU4YWQ1YTU4ZDAwYTczZjFjYjZkMzVlM2NiMzMwNzgzZTdjYzIxMWM3NmM3MDllMDkzZT=
ljOWJiZmY1MzgxNWE4MThiNzNlZmJkOTFiZGJkMjMyNjA4YjA1NTA4YWRiOWVkNDdjMWRiZTY4N=
jkyMzlmYjdmMjU2ZWVkYzgxYWNlZjlkNmViNmU4MGJmNTc0YzdiZTcyMWIzOGM1OTBhNDM5YzU2=
N2E1OTIyODI5ZjI0NjRhOWU5OTU0MmEwZjE4ZjhhMzE3ODFkNWQ2NjBjYWQzODA0MmI0NDE5MGV=
hNzIzMzZhZjJjNDRlOWFmNjdjZjc1Y2YwMWExOWJjYzRlMjlkYTk3ZGQ2NDNjYjQxOWIwNTdiMj=
c2NmMyMGYzYzM0NDBiMTFlNjlmODZiMmY5OTNiYjNlMTIyZTdhM2NiNjdhZjdjMzE5MmNhNDcyM=
mI0OA=3D=3D>
   Customer Service
<localhost:1333?u=3DYTkxYWYxMzE4OGM2YjYyNDQ0ZjVmNTNhM2M4MjBhY2Y1ZTkyOTZmZjI=
3YjIzNzAwMjY3MmNiNWI2NzQ5OWFmYTgzMDI0NzQ0YjMwZDU2NjAwODlhODE1YmY1MzU3MmYxZT=
ZhYmJmZjNhYjVlMWNiOGIzMzZlZWI5NTQyNjYxMWFkNDA5OTdmN2IzNDc2ZDI0NmI1NjlhZTM0M=
zQ0ZTFhYjI0YTRiYjI0Yjg3NDk0NDgyMWQ5MTgxODJiMjIyNzhjZDEzZDEzNDk4YmM5MjJmYTJi=
NjkzODFhYTU4MWYzZDNhYThhNjE0MzU1MWE3ODNjMWUzMWE1ZDc0NjE1YzY2MjUwMzI5NzM3ODM=
0NTE1ODQ3Nzk4NmIxZjZlMjRlNzcwOWViMTcxOGVkOWZlM2FkOTJkZTA0ZDgzZmQ2ZjQ4Yjc2Nz=
RlYmZhMDdjOTI0NzlkOWMxODA4YmQzZjlkOTRjOWI0NDQwNzY4OWI2YzgyOWE2YzcyYjMyMmE0M=
jllOQ=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DNGM2NGYyNzUyMTMwYjhiZDI0MjVlOWFmNWIwOWM0ZjFhNmI4YjdmMjQ=
2ZTY5ZjFkNjQ3OTMxYzc4MGVhYmM5Y2Y3MDJjZWY5NmE2MGY0MzkwMmEzMmM2OTNiNDE1YWY4N2=
JkOTAyYjZkMDg0Yjg2OTdkZTAwOTI3OWExNTAwY2M2YzMxNTMxMWVmODAzNjA4YjUwOTM0Nzc0N=
zkwYjNhZWY0MWQ0MTI5YWMwMWQ4ZDljZWZiOTE2M2M4ZWI1YTEzNjJjZjFjZWFlMzIyNjQyM2Ix=
OWQ0ZWQ0NDQ1M2ZmZDVkNGQ3YzE3ZjdlMDc1ODY5NDkzNGU2NTU0MDUyMjc=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DMjE5MmVmZjlhMzZiYTViODgzYTYwNzdkOTI2YzNiMzQyODNiYWU0NDM=
xYzRmNWYwODZhZmU1ZDY5OTJiM2I2NGYzNTA5NmVjMjQzYTk2NDkwZjY4YjFlYjU5MmZiNzBjYT=
c3NjFmMDNkZDk4ZDU3YzhkOWNlMjQzOTM1YWJkZDEzZmYxZGQxMjU0OGFmNzkzMjQ0Y2ViMTQ5Z=
jk1NjMwNTc4YTY0YzU0MzQ3MjgxZjUzMWUwZTczNjE1NzBjYTQ4NDJlZTNkNzFkNjZjNjRhZDZl=
YWVhZWFmY2MxNmRkZTNlYjQyMzUwMGI1MTgyNGY1MTQxZWM2ZjNkZWE5ZTliZWU5MDkyYWEzNTI=
wMGZjZWJlNDk5N2IxYmQyNTFhYjNjZTM2YjZiMTg0MTVkYTk2OTEzY2YyMWQxMjY0YTBhM2ZjNj=
JiYjE1N2YzZjRhNjM1Yzg5ZGIwMDQ1MTNjYTFkN2FlNjMwN2NlNmEwYmRkZDQzZDk4MzhkZTg0M=
zAyOThjMzQ4NmFiMTA2MThlODc0NzkyNDhhNmVlMTFlMjg3YzEyMjE2ZjgyNGI2YTFiNGQ0OGQz=
ZDViYzM=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DOWVkMWU4ZjZhMzNiNTg4=
NGQ4YzgzMTJlNGJkMjczMDk5ODBiZTEwYTZiYWY2NTIyNmYyODMwNDFjZGZlMzAxNTQwZTJjNDN=
mNzc2NWMxYTU3ZmNhZDRjYThmNTIzOTBkZDc2ZDU2MDhlZjhjY2YyNjUzNmQ2MWEzNmE4OWRhNj=
Q0Y2RmMTBkMjFkYjQyZmFkODI0NmNmYTI3MmQ1ZGQ1NTZhNDQ5ZTgwYWNiNzkyMzFmZWM2ZmQwZ=
TBlOTc3NmIzMjdiZjEyMDRmNjQ0YWZjYmYxODg3ZDk4MzNjY2UxZmJkMWRhZWZhMTIxNzY4OGEz=
ZDkwZTg0OGM0MWNlNmMxZGE2ZDUwZWQ1NjA2YjI5NzZjNGMyYWMwZTQ3MTE3YjJjM2ZhNzhkMGI=
xOTI2MmE5MzZlNjBiNjI4YzkzODFiZDZiMDQyZmUyOWZlOGRkNjM2Nzk2NzdkOGFmNDI1YzYyMz=
Y0ODJiMDY4ZjcxZjg3YWI4YTM4NGJmNmQ2" target=3D"_blank">
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
?u=3DYzNkOTk5NTliNDU4NTJiY2E3OWQ3YWJiMmE0YmNlZWJiNDc5N2M3YmVkNmNlMTU1YzJlNz=
c1Y2JiZDNiNjk1ZDJhYTBkZDM4MTAxNjk0Njg5OTg4YTAzZjNkMDA5NDQxYTk4ZGYxZDJkZjA4N=
zM5ZmM2NmJkYzIwNmM5ZDJhZDgzM2UwMmRlNzkwY2IwZmJiZTFjYjk2MzI0ZWQ4ZmQ0ZTI3ZTky=
MDhkYWRiMWY0M2M4MzAwZWM3ZWFkMWNlMzhkOWJhMTE5MjZjMDc3YWQxZGRlYzZjMTczZGFlNDY=
wNzhkMGIyM2RhNTczOWU4Y2Q3YTQ5ZjVmYTc2MmNmZjU0ZDQzODQ0ODI3Y2IyMTJjOWViZTM3Nm=
IxNjUyZjBhY2E0ZmEwN2M3YjdkNWRkZWMwMmU4NjM3YWQwMDA4Y2NkZGRkNjliNTU2ODVkYWJkM=
GMzZGFkZTg0MzBhNzY1YTQ1YTU2MDQyYjJlNDRmMzM1N2Q1Y2YzYjNjNDY2" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DYmVlNGI3Y=
2MyNGE1YTE1ZmNkMThiYjcwMzE4MjJkMjgyYmJjMzY4ODg1ODM0ZGEyMjE1YjAwZmFlNDlmMjg3=
ZWIzODE5NzFiNzc1NWI3MzJmNTkwMTQyMDFmNDBhNTVhZDA4YjI1YWQyMTQ3MGJhNzkwNDY4Yjk=
zYzc3ZGJjNWQ0MjBlMmMwNmI3ZGMwOTY2YzhmNGFkZmM3MWY5ZTBhZTQ4NDkyODdlYTBjNzgyOT=
g3ODBmOGU2MzI5MGQ4M2FhNjU5MWExNmY0YmQ2MzIyYzllMDM0MGMxYmEzY2E2ODY1YjE3ZWUxZ=
TNkODUxYTRjZjVlNDMyMGJkOWM5MTgxYzMzOWRhOTlhZjQ1MWY5NmExZDc2NWY4YzRiOGQ1OWNj=
NmVhM2ZjM2Y3YzgzY2MxMDk1NTBjMzI0ZTdkMzM0ZmM0NTFmM2RhYjg3N2Y3ZGY5MTk5Y2MyNzd=
mODk2Yjg5NDFiZmUwNGY4MDZiYTUxMjRiYTBjMTRkZDg4" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DNWY5MGZ=
lNTRiODIxOTdhMzEzYzk3NzAzY2FkYzMyMzg2NzNmMDhlOGUzMWMxNjljMzAxZDAxODkyYThmYT=
U4OGUwMGZjY2FjZWFjNjNhMzNhZDJhNmFmYTk0NzYwNzg2YmMzNjQxODgwMjM4YThjZDQ5MDhiN=
WE2NDY1ZjRjNTgxODE5MzJmNzgwM2JkZDZlZjFjOWI1NDU0ODYxY2Y3NTM0OGYwZGJhZjU1MTJl=
ODAwODgyZDNmZDAwNjI5MmU4NTk3ZmMyODNkNDljMzE0ZDA2YmQ4NTYwMjU4ZDIyNjAwMzIwZDh=
hOTEwMWJiYmFkYzMxZGI0ZDZjMmU2MWFjN2EzZDkwMjcxZDk0MjRjMTJmNjE2MjYwZDY2OTI2Zm=
JmZTdkYTNiZjUwMzllN2Q5NTQ1N2UzNzQzNWM5YmMzZmZmMzQzOGEwYWU1NTk4ZDY5ZWZmYTJjZ=
TdkOGQ4N2E2NzA0MzgzYjdiNGY5YzQ4YThmYzkzYmMyNTVh" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DNDI4ZGRlMThl=
MzIxZDRkMjA3ODA1NzFkOTAyODhhMWZlZGVmODAwYTVlZGRjZTgwMDk2NTczMjRkMzk4ZjkwNGE=
5YTk4NjFiY2ZiZTQ2MGZiZTIzZTExOGI2ZjViMTZiNmQ4ZjdhY2RlYzhiYmI2YTc1MzY4YmZkOT=
JkZjcxNTU0MmY1YWUzNjNmNjUwYjliZmZlZmJiNTY4NzdhOWQ5NDQ4NmNmZWE1ZmQ3NGU4NzQyZ=
DZlZDc3M2Q3MzYyYzNkYTFhM2Q4NjY3Y2RkMGJiZjM5OTgzNTkwN2ZhNGE3Zjc3MzhmMzg1YmM4=
NDE3NTA3MDcxOGYwODc5ZWI0ZGMyNjMzMjQ5OTE5ODI0MzcwMzg5ZGFjNjNmNWJlNzQ2ZjEyMzB=
lMmEzOGQ2ZjA0ZDJiMDJkZDU2NjJlMGRmN2I3Y2MwNjNlYTY3MGQ4NzEyYTk2NTg1ZGFhMzc3MT=
MxMTlmMTUzYmI5NjE4MzM2YTFlZTZlODRhMGExOGFl" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DZTUyYmZjM2RhOGYzN=
jVlYzMyZDRmNjdkNmJhYzk4NjgyOTNhNGU0NGZhOTY4YWQ3N2U1Y2E4NTU5ODk1MDAwOWE4YmI5=
NDQxMDVhODM0MDBiZDcwZDQzMGU1Y2RiYzM1MDE5N2U1MzJjYzMxOTc2MzYzZTc3ZTU2ZGQwYmI=
1MjE3MTI0YmYyMDRjNzI4NWQ4MGQ0NGE4NjkwYTJhMTk2ZmI1ZDU4NWFkMWE1MzBkMDUxYzhhMG=
U1ZGUyM2FhZTczOTc2OWEzYWJmMzBhZTQwODJmMmMyMDkyZDE3ZjY2ZWNhMDQ3ZDZiYTAyODZkY=
zg4Nzk0Zjc5MTZjYWQxNTMyZTlkMzhkNTBkZmI5YTIxN2Q5NzlkMDc0NzMxZTExODc3ZDgwYWRk=
YWMwN2EwYzJhYmM2NDJkYWMxYWFhOTg1ZWU4ZDU0YTM5YjE3MjIyNWVmNTJiNzNjMzc5YjVjNTA=
wNThlYjU3ZWJlZjk5Y2YyYmQwNDk4ZjQwYTAw" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DMmQwNmUxYThhZ=
TgyYWZjYzNiMTJlYzdiMTAxY2ZkYjVlYmI3NDA4ZjA3YTFiZWQ4N2U0ODJiMTYwMjVhYjgyMmYy=
Zjg0YTJiZjg5NWQ1YjBlYzQ2NGQxNjEzNTlmNmRlOTJjNTkzN2UyZGZjZGFmNjBiNjQzZThhNTA=
yMTc3Y2RjMWJiNTMwNjcyMjRlNTE3NTFmZTFkNGIyYWMzMzY5MjVhNzA2NDlhYzFmYjNiNDk3NW=
JmMmEyYTMwODViYTE0OGI0NjRkMzBmN2U0OTQxZTM2ODZkZjA4MjZmOWQ0MmE2MjFhZGU0YzYwM=
WQzNzYyMjMwZjFiOWIwNDMxMmJmODYzMDY4OTU0ZDc2YWVkYzI4M2I3ZjliMTEyNTU3OTU4NjU2=
NjczMTliMWJiOWNmZGFmODlhMGNhNTQwYjcyOTcyYmEwZTFhN2E0YjliNDA3NWVjNzQwMDYxNTk=
yMTIyZjJiODdkYmE4Y2RjMzg4ZDMyNTRiZjY1YTY4" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DYzY0MDE=
0MjhiYzVmY2M3ZTU5MTYwOGMwYzczMGVkM2M2OTZiYzBlMjJhZDAyYWE3NTkxYjEzZGJiYjIzNT=
c2OWM5MGU4MzgzMjBiNTMxMDU3YTgxZjg3MjMxZTUxNjJiOWEyNWRmNmIxNmM4MmQ0ZTU1YTg5Y=
jU0ZDQ5YjVlODM0YjE0ZGY4MWYzZTQ3YjYxODE1ZDY3ODFhODQzOWQ5MmU2OWZlOTljM2E0MThm=
MDQxM2I2N2IxOTYwOWE1ZGYyMmIwZWFjNTQ4NmUyNDQyNmM0ZmJhMmI2ZGQwMGRjYmZkMmVkYjE=
xYmFjODY0ZWY3MmNiODJiMDlkNTQ0M2E3YTY0MTc1N2ZkOGZmODE1MmNhNWFkYzdlMzdmY2UxZT=
k2ZTQxNTcxYWFhYmM0NjI3ZDE3MWQwMTNmMTM3OTlmZGQ3MTgyMjhkNmNmZGQ3NzdkOGExNGRiM=
WYwYWIzMThkZGU5Mzk0Y2ZiMDJhNDUzZTE0YjM3YWYwMTBhZGY2Mw=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMGJhMmEwNmYyMDJjMzkwNGRmYWVlMm=
YxN2QxNDY2Y2Q1Mjg3ZTdjNDJlOGQ5YTE1MWI4M2EyY2M1Y2VjM2M0N2Q5NzcyNmZiYTdjZmNiY=
TljYjNkMDQ2NmUxYTQ2ODhiMmMzZDNkYTcyYjhmOTdlZGUyYTVhNjViZTFjYzQ3MTkzNGUxODE3=
NmRhNGVmZDAyMTg1ODc5MjZiNWUxMTViZGZkNGZmYTM1ZTZjNmNkNDNhNWQ0ZWYyMTY0YWY1MTg=
0OTQ0ZDkxZjg1NDM3ODJkZThjOTc4MDA4NmI4MGFhZjkzOTRiMWVkOWRiYTYyMTM3ZTg1YjZlZT=
dkZGI4NWM4NzgyMzExYWY3ZDZhMTk1NzJmMzA1MmYzZTc1ZThiNzY2ZTYzMTA0OWFkMDQ1YWEzZ=
WI1NjFmNmZjYjhlZThhMzIxMWFiOGRhYTgyMWE0YzJmOWJhNzFkMjdjN2ZhZGRmMWI3M2M2MTEw=
Y2UyMGFhMzFiYjFjMTM1NTY2" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNmVlMTY3NDM5ODY5ZDFhYzdlOTFhZT=
ljZTQzYTA1MzFjMTUxMGUzZGQ3ZTUzM2U0ZDkyMDY3YzhjOTA0ZjQ5OTM1ZjQ0ZjAxYjQwNDk2M=
DZiYTlmMjE5OTdmZDk1NDcxYzFjODVmYzQ2MWRmNDVkOTY4YTRhYzhlNmIwNGM5ZTg4ZDE5ZmM2=
M2EyNzU0MjdkZTMyZDY3MDczNjkyM2QzNjkyZmRiMWE4MTFmZjI2MDBkZWRjOTVlNjA2N2ZjMzM=
yMDZkMjhlYWIwMjY2YmE3NzRiMWJiYjY3N2MzOTFjZDcxNjc3MDgxNjQ5Nzk0OGFhYjhhOTg0Y2=
Q5Nzc3MzVjN2QxNzcwMDU5NDQxZjU4ZGQzNThjMzhlZDgzOTI3NWEyNjZjZWQ3Njg2NTNlZDI5M=
TIyOGY4Zjc3NGVmYjA4MmYyOWIxNTMwZTAyNTY1ZmFjNTE4YzNiOGMxNGY2YzMwZWEyNjg2MTFm=
YWE5Nzg1NjU2NzFhZjUxMjNj" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZDAzZjE4ZjlhMDQz=
NzlmNjQzMTYxOWY2NWYyMTQwZmY0NDdmMDJkMzhhODRmOTY4ZDI0NzdjZjM2YmQ5ODVkYmUyNWQ=
wNTJiN2JiZGY2NjY0NTFiOTdiOTU5YTFlZGE5NWQzM2RmYzUyZmVlODkyNzk2NjdlY2FjZDE2Mm=
EzNGI4YjNjZjY5NjAwODJkOWJkODA1MTE2NWNkMzIwMDhiMjk1ZWQyZDljMWU3OTIwYzlhZjhlN=
jc4ZmE1OTM1ZTFkOWIwMmI3NmY1YmQzM2UwMGQ4NTkxNDAzYThkNTkwYzAzYTM4ZDZkODNlMDgx=
YmVhNzYzMzk1ODI2YjIxMWM5ODIxNTM4MGEzYjY5OWQ4NGZjNTg1OGRjZGM3NjRkNDg3NWU3OWV=
lYjdkYjk1OGFhMjNkOTQ4MzJjOWFkMzgwMWQ5MzU0OTFlNmNlNjdjOWYzMDFhNmQ2ZTA1MzBmZj=
kwOGY3NTFjOWI4MmU2YWUyN2RmZDk0MjZlNGU4YmM0ZQ=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DODkzOTdmNjI5M2Rk=
ZjIyY2M4M2NjMzQ1NDQ5NWZjOThhMTZhMGE5YjA2MTI0ZDZiNTBjMDIxOTE4Y2ZhYTdlNjQwMTE=
5YzJmMjMwZTlhZDE5MDc1MzUzZmI1ZjZhYTI5Zjg1ZDgxOGMyN2VjZTYyNDlkZWVhYzZmMTFhZG=
JlYzhkNGEwZDUwMmI3MzZlNzRjNjBmMDA5ZjRkOWMxMjA4OWYzOTA5MTZkYjY2MDZkOTMxMmMxO=
DU2YTFjZTQ1OTYyZWM3OTcwNzFiZTY0YzBkMGZjMmIxNjUyOTg2ZjQzNTE5MjQyYjNhMTRkMzg2=
NTY3MzU1YjFhYWU5Y2VhYTM2OGY5OWJmMGM3ZjM5ZjYyZjE3ZGI4MTllYzI4Njc4ZmUwZGZhYmM=
wNDRiMjk4MmVmM2Q3YTRhNTIxMmYxZTQ0YzI2NTI1ZTI0YjBlNTU5NDBkNGUzMjQyYjk5ZjA0OW=
JhOGFhYzk2MWE5MGU0NTdiMTIwN2U3MTMwYTlhOTg2Ng=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNGZhODliOTZlNWYz=
MGNjOTE1ZTg0ZmI3MzM0ZmVhODJiYWUwMzY5NWUyNzc2NzUzMDgyMjg1ODQzY2M2MDEzNWMwZmZ=
kNWZmNjVlMTJmMTZkNTRjMzllZDUxOTY4MDE2M2ZiMjgxM2I2OGVmODYzMjAwNTQ1NjQ4Njk4Yz=
Y1OGM0ZGFkZmY5Zjg1ZTVjZDJlMzIwYmFjNWQ4ZDE5NDFjOWFlNjFkYjIyODI4MDYwNmU4OGNiO=
DFjOTMwZjAzMTViYjg3ZWI1OWM0OTQ3NDQ1Yjg0NjdmMDE3NDNiMDI1ZjkzMDBiOWJiY2U0NTY2=
YTNiNWNlMjc1NzgxMWQ5NjkwYjI1NDY2ZmM0ODhjZDE3NWZiZDE2MzAwNDgzYzZmYjE1NzEyNjB=
mNjYxNjNiN2NlZDk5ODExNGY4YWI0NDBiOGFhOWFlYmVkMGQ4NTM1YjBiOWUxMDNlYWEyNmE0Yz=
E2NjNlZTExZTZmNWE5ZGJhNGM1NTcxYzg1NGIzYzkwMg=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZmZmZjlmNGVmMjFk=
MmQ1MTQ4YThjZjI2N2I3Yzk2YTZhMzYyYzdhNDMyZTZhOWQzMjkzMDM0OWNiMmQ3MDFiOWYxMmQ=
1NWQxOGU0NmQyYWFhZDI0NmY5N2Y1NzA1NWZlZDFmMDM4NzJlZDYwMmExMWMxMDk3M2NkOGVjNj=
c5YTE3NzhiNzc5ZTdjOGI4ZjQwOTc3ZjNkYjIyMmYwNjIyZTg5ZDgyYzQwZjEyYzY1MmQzYzBmO=
DY0MDVkYmM2MjY3NTUzN2QyODdhMmM5NDAxZmM4YWU1MmU5NDkwN2RhYWZiOTUxNmI1MTNhNGRl=
MWE2MzNhNzM3YjJlMTc5MDczY2QwNTY5OTY5OTBmNzcwYzE0NWI3N2VjNmJjM2Q4ODVmODJlMTQ=
yNGYyM2I0YTk2YmNjMjNkZmRlMGRlZmQ5Y2FiOWUxNjM2MDc4NGE1ZDE1MjAzNDMzYTIxNDk4ND=
VmNTljOTlhMjFkOWVkZjk4YzYwMjQxYzlkZDk5N2NmOQ=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZDJiODMwMzkyNzJkZD=
hjZjRiY2FhYzBiYTIwNmZhYWY5OWZlODg1OTFlYmUyMjU5ZDFkMTQwN2U0ZTc2NGI2ZjU3MzRiM=
jVmZDljYjlmMjRmMWU4NTYxNGNkMmRmNjhhOTI0ZTUyNTg2ZmUxMGU5YWVmNTAzNzhjYjIxOGM0=
ZjYxNzI0Y2U5ZjE0MTQ4MDAwYmM1NmUwN2ZiMWU3ZmViYTdmNGJlYTM0YTcyNWYyZDI3ODhhMWU=
4NzNjMDFjZDgyYTQzYzRkZWQxM2VhMzI4OWE1MjkyMzIzYzg2NjJkYmJmNTY0YmY1YjhlZGM1YT=
MxNGNlNzRkYzk4MTA4OGFlYjM3ZjQyYzY0ODU1MTRkMmI2ZmRhZGRiZmIyZmE0YTMwY2Q2MmFlZ=
mRiZmE2MTBkZGJjNmFhYmQ3YWFiMzEzZmFhNWQ0MzhkYmIwYTQxZTEzYTgyYzI4ZDI5YzYyMzBm=
MjEzZWZjMTkyOWRmNjdlNWVmZTg4YjBhMjJkN2VlNA=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DODEwMTJkODViNDVm=
Y2Y1ZDAyMjg5MTAxODA3ZmViOTJjZGRjOTUzNzMzODEwZmExOGIxZDE0NGI0OTEzMzMwYWZhY2Q=
5MzgzODJjOGY5NzY0ZjJlNjA5OTcwYjliNTE5M2QyOTA4MDUwYzQzNDM0Nzg3MGMyMGI1YjViND=
Q2YTA5MWNlYzhjZjEyNzBlZmRiMzA5NmIzNzI0NWNlNzQ0YTI2ZjUyMGIwNjU3Zjc1MzcwMDU0M=
WY1NGU5N2ZmZTRkZjU4MDE4MDQyMWUyNDk3YmU1ZWE4NDMzNTJmODkwNjhhZDNiZGEzODdjMjlj=
MTFmYmIzNTExMjNiNjBjNTA=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DYjFhYmZmZGFhNjNhYzE3OWZhZDhhNjU5MjllN=
WQzOWE2NDBmMjlmYzAwZDY2YTYzM2Q3ZjM0MjA2ZmZlMTkwOGQzYWZmZTM4MTNmZmQxZTcwYzQz=
NWE0YzNlN2FmZTZmM2QxNGI1MjgxODhmZWFmZWI4MTIwZjZiNGU3MzBiNzZjNWQ1Mzc0NmZiOTQ=
yOGExOTJlOGRiZWExMTAyYWU3YzhjZGNlZjY0ZTM2YzQ1MGQ5NWQzZDg1NmM4MzU0MmYwNjllND=
lhMDUwMjUwZTVhZDJkZTQwYzlkZWZmY2UzNDFiNmFhYzA0YWQzYmM4YzI3Nzg5MDJhMmI0NjE4N=
zZiZWM1MWU1MjAzZmY0ZjFiZjAxMTUxOTU1MDQyYjI1ZTNiMjY3NjA5MDk5MjNlZDIzM2M2Mjc5=
YTU2YzczMzBkOWFlZTc4MzMyZTJmZjhiMDM1NmYyYWU1NTIxY2JjMjFkMWQ5OTI4MTM3OWY2MjU=
2ODk2MzM5NDk0MjEwODhkMTMzM2RiNThiMzk0NTFkZjc3NzcyMzBlYWI1MmViYzJmZWJlYjEwY2=
M3MTExNjcxMTkxNDJmYzBlYWI=3D" style=3D"font-size:12px;line-height:134%;font=
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
