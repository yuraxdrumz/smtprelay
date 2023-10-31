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
From: localhost:1333?u=3DOThhMzc1MGQ3NDMyYjBjYWU2OTFiODE2NzY4ODAzMTU4NmMwMD=
Y3MDdiMDMyMWI5ZGMwZWNlODVlYzdkYjNjNTliYzFlNDhkOWFhMjIx <mail@eg.expedia.com=
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
<localhost:1333?u=3DM2MwYmY0ZmMyYTRkYzQxMjg4NGIwNzU3OTM4NDZmMTBjYzkwNTAyODA=
2ZDRmNjE3NWVjN2Y5NDAzYzNmZmZmZDhkNDBjMWU2NWU2MGVjMzA1OWVkNGE5Y2UyNjI3YTBmNT=
RkZDc2YzM0OWE2NTYwYzQxYTY3MWJjZmQ2MDBjMzVkNzQxZTY3OGFiZWJlMjVjMTI3ODhiZTExY=
zBmMDk1OTgxNGM5OGRlMjgwOGZjNGRhODNiYTY0MjRjYzgzMmU2NDdiOWEyMDhmMWEyYWFiZWJi=
M2JiMGQyM2QwM2FiNDIxOGQ4NDczMTJjOGZiYmQ0YTYxYjE4ZWFkNjkzYmQ0NmUxNjk4OGJmMjh=
jZDkxMDRiOTUzNGY3ODZjZWYwYTczMjMyN2NlZjk2Y2QyMDc1Yjc0MjUyMzhkYjg3NDFlMmU3N2=
FkZmY4MzEyZDVmNWNlZjUxN2RkOGVkNmNhYTIzNDZkZGRiOWNhNWM5YmQxNWQwNTNhZDZjYWQw>

* The Travel Edit
<localhost:1333?u=3DZjgwMmUyODM2ZjI1ZTZlYmRjZjUwMjJiNWYwZDIxZDVkYzFlZjAzMmY=
yMzI3NjMxYzRiYWVkYjU2YzA4MjhmZmZiYmIwMzMxNWZlYTMxMzkzM2U2ZDI4OGVjZGM1ZjY5MD=
VlZjE4NDVmN2ViM2M2ZGZlYTExZjFkODNlODg4ZjFiZGMwMWQ2ZDRjNDNhNDg0NDZhMjQyY2M4Y=
zMxNGZmODNhMzJjYmZmYzMyYTkzMmM5MDZkZjUwODlkNTBiZGU5MDZiNWViMTE1NDdkNDVlMWVj=
MWM5ZjBhNzJmZTIxMWYzMTE2YjMyOWRiODE0ZGQ1YWFkNTc3NDNkNDhlNWM2M2EwNDA4MGZmMTM=
0NDhmNzM2ZDM0NjA3Y2MyYmYzMzJmMmI4MzFjZmQ3NDk3NmRkYmYzNzA4M2U4MmIzZTY5MGVlZG=
JlZmEzZTU0NmYzMGUyYTgzNDE0ZjdiMjZhMjkwY2M2ODg2NWE3MGQ4NTAzZmYxOGVmYjMxNDkz>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DMTNhMzhkMDg2NDVhZDBkMTQzM2FjYjVkMjRmZDlmOWNiMTBmNmQ1OWI=
1ZmY4OWVkODRjMDhiYzVjNjcxMWI5Yzg3NWE3NTM0NmFhZjM3YmVmNzNhOGJiMGMxNTJjZDhhMW=
VhNzc3MWIyZmNjYTRmY2I2ZTNkMDhkZWJkMTk4ZmJjZmFjNTk4ODdiNWM2MGQxNzlmZjk0Mzk4N=
jk0Mzg0NjJlOWNjOWU3YjMzZjMzZGU1NTNhZmJmZGI1ZDM4MjBiMzQ5OWZmNDBiMWYyYjJlZmEy=
YjRmZjVlNGYzZjA5OGNhNDU0MDAyOGRlNmNjZjg2OWY5YmZmYmFjZDk1MWQ1MjNhNjUyNWFjYWM=
zYmIyODFlNjJhNTY0OTBiNmI3NzZiYTM1MjQ1OTVmZmVhMDZlMmE5NTZlYTg3MTg3ZTA1MDM4ZW=
YzMTBlYmQ5Zjc4OWE5ZjUyYzYxMWE4ZjdjNGRlZmRmOGRhNjRhNDE3MjRhYzZkZjdjZjI3MzJl>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNzBmNTYyNTc1N2IzNDRmZDk1MDNmNjg2YzZjZjk4ZmExNDA2ODY0YTE=
1YTVmMGQxOWUyMmI0NjA0NDZmMmNkNTVjNzNiMGI4ZTg1ZTI3YTFjMjQ4MTBiOTVlZjI3ZWJiYm=
U2YTBhZjU1ZmRiNWVkM2RhOTM1ODhiYzUwYWE2NTFhMjk3NzZlMzlmYzkwZGE2MzYyYTJhYTE3N=
jY2MjY1MDJkMjJjZDc1ZWI1Y2U4N2E3ZDEwODkyZjg5YzZkYjk0YzI1NzlkNTI1NmQ1MzgyMTA2=
ZWJjYjMyNmUyZWE0ZTBjMjM5ZGFjYmYzYTY5NjNhNWI1YjM1ZDExZTZkZmU5MTk1NmFjZTczZjd=
kY2ExNDFjZTk2YmNhMzFlMGUxZmQwYzVlODgxMjZkNTk5MzRhNjM2YWVlYjk5Zjg3NTEzMzhlMm=
UzODUyOWMxODg1ODJkMzc3ZDU0Mjg1NGNmOWY3N2U2ZWZjYzVlNzgxMmJlN2MxYTdiNzQ1NzIy>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DMzExNjg4NDA4MDIzZDFhMWVjOWUwMTI3ZWVjNzQ3YTNkMzJlNGJlZDE=
3MTQ1NGRjZGI3YmExOGY3MjAxOWNhNzhkYTg0ZWQ1NDhkNDI4NTc5ODI1MmJjMDRmZmI4NGE3NG=
E5ODFmMWU4ZjM1NDBlMzAzYWE2NDNhMjhkN2FmMjM5YTBjYjU5Y2M1YjFjY2M3ZTY3ZTAwZTQ2M=
jBiYzI1YTU5ZDVjZTQ0Y2ZmNTVjOTY0MTNkOTQ4ZjQ3MmY3MWNlZWIyNGRjNjIxMDRiOTUyMWY1=
OTc5YjAwNzNlY2UxMmNjMDY0ZGZjMjdiNzQ0NGM3MzliZmVlMmUyYmYzOGNhMTgzYjU1YzE5ZDg=
wNGU3NmZlZjkzNThkZmY3M2Q1MzAxZTEyNzc4YTQyMjcwYTk5NDUxYzUzMmFjMDUyYmE4NGIzMz=
k3N2U4NTBhMGQxZjJiOGZjNTFjMjVhZjVlZTQ2YTg3NmE2ZWQwNjI0MTkzYzc4NTE2Y2FkYWFk>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNjZmYTZjMjQ4NDdlMGNiYWZjMWQ0MGYzN2FkYzc0ZDc3MWNjYzYyNDQ=
3MGI4NTU0ZDk2YTBlYjhlOGIyYTM5NTc5Y2Q5MjdlOTdkYzUyZWM0YjVlYWNjMGQ1ZTljN2YxMm=
ZiZmM1YzhlOGFiNTQyMjlmZjIxZjU5OWRhYjQxZTFjNTA1YmM0M2IxYjk2Nzc5NTBhMmFlNjM2Y=
zIxNjc2ZDgxMDA5ODIyZjExODkwNWM5Zjk2YjU2MTcxMWQxMGNkNjk4OTI5MjRiMjA2NWI2NWZl=
MjcwNGQwYmU3MTRkNDE5NjYxZTNhN2NjMTczMjdmMjQzNDUyMGE1MTQ4NjVjZjU4YzM0YzI5ZjI=
zZWY5ZjRkYjFjOGRmYmQ1M2YwN2FhZjJjZGM3MjUwZTY4OTEyMDA3NzIwMWYxMDY5ZWU3ZDc5Yj=
BlNGMwMDQwY2NkODcxNjc3MzQ0ODFiYjM0ZWI4N2YzZjkwZTNmM2NiYTVkNThiZGIzYjBkNjg0>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMWM2Y2YwMWVhODI3ZGNlZmNkZWE1NGU0ZmQ4MjZlOTFlNGM5NzRiMDY=
4MTg2YWM4MDc5OGZkYzQzODNkNzk5OTIyMzdiYzM4MjgyZjE3NjM2MzkyYTQ4OTRiZGJhZjFiZD=
dhYzJiZGJhZDFiZDc4OTYxMmJjOTZjZWI4NDAwNWI3ZWFjODllYzEyZGUwZGY4Nzg5YWVhMzQ1Z=
GMxNGI0MzU2Y2RhMGQzZGQzYTE3NGRmMjc0MzEyZjEyYTRiMTAxN2Y3NGE0NDg4Njc1ZDJhMjJi=
MTViZjhiZDUwNDZhMWE3YmZhZWQ5MDFlM2ZiOTJiMjE5Yjk1M2RlNmRiNDVmNmYwMzYxMGJjYmF=
lZjNiMDM1Mjc5ZDc1Y2U0MWNiYTliYjlmNmQyZTA1NzczNGNmOTY4ZjE1ZmEwODcxMTliMzJiMD=
JlYjQxNjA2MjQzYTEwMmQ0OTcyZWEyMzhiY2QxMWQ1NjlmMTRjOWY5YzllOGMxZjJhODAwYjZk>

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
<localhost:1333?u=3DNjQxNjgzZTc5N2U0MjUxNmRjNjIzNjU0MjVjYmY2NzE4NGJiYTA1NzR=
hMTQ5MGY0YTJiZWU0YTVmNjQwNWEzZjYyODUwMzAwYzgzMjZlNGQ5MDM3Y2EyMTY3ODU3YTVjMz=
BlMGVhNzZiN2ZkYTM4ZmZhOWZhNTA1OWVlNWVhMGJlMmUyMWQ3YzZmZmEzNDNkNDBhOWE1YTI0Z=
jgwMTY2MjZiMTQyYWIzZjc1YTVjYjJjYTQ1MWZlMWM4MDY3MzAxYzJjMWJhMzVkNDMwNTNmZDdk=
YjJjOGE1ZmMyOWQzOTg5NDA3NmYxZTgwNTI0ZjBhNTY1MWQzZDJiYWJjZDk5NzYwMGIwNDc3OWZ=
iNThjZWI5YzYyN2FkMzNiYTI3NDcxN2M1YWJiMDdlYjQwODdlMGNmNDQwNmU0ZTRkOGY4YTJlND=
A4MWQxMDc0ZjczMDYyMmMwYmI5ZjU3OWY2MjQ1ZjIyM2JhOGVjYTFkNjlhMDY1MTVlZWVhMjMyN=
TVmZQ=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DNWRkM2M4N2U5YTAzZDdkY2MzMjgzOTA2OGQ3ZjZhMmFlMzllNTM2NGN=
kODVmNDQ4ZWRmMGYyNzhhM2Q2OTFkM2M0ZmVhYTgyMGE1MTgzNjM1NjU3ZmMxYjBjNWEwYTJhZm=
RhOWIyZjgxN2VmZWEyZjIzMjM0ZThiNWJkMGI3NWFjMWYxMWNlMDU5ZDZkYjA5OWM2M2VlNDU2M=
2I2NzQyODM3ZTQzYWYzMzlhYjI1MDFiMDNhM2U2YjUzNDdjMmNlYjYzOTUwYWRkZmQzYzFjNGMx=
YjVlN2Y5NmVmZGMzYzQ2YjUyZjcwMDEzODA4NWZlODk2MGM3MmIxNmJhNmQ2ZmNiN2Q0YTgwNjg=
xNWE3ZDdkMGMxYWI3M2ZhMWRjMjVmZTQwMTY1NzQwZDdhY2Y5NDhiMTdiMzExYTBmZWFhOTZlZD=
JiMmZiNzMxYzFhN2U3MTY1NDkyYzAyZDllZWU4MWE2MjQyZTE3MDc3MjYyYTY3NzgwZDViMmE4>
  [image: Google Play]
<localhost:1333?u=3DNTcxNDk3YTE0NGM0M2JmNTRmOTNlZDdhNzExZTQ1MTliNDIyMzY5ZjY=
3Yjg3ZWQ5ZWIwNzZlZmM2OGUxNjQzYjk5MGE4Yjg0NDBkOGFiNDYxMjc1ZmRlZDkxYTZmMjE3Mz=
NlZGJiYjEwYTZhNjJlOWE2NWVkZjNhNWVkZWFkNmQ4ZWM0MmU4MjM4M2RmYWJmMmVjZjU2YWM1M=
mYxZDM1ZmFhYmUyMzI1OWYxOGQxNzEzOGJkZmI3YjE5YTAxMWExODA2ZTEzMDdhZmQxNmExMWI4=
OGQyZTFiMzhlZDBkNDI4MTg0Y2ZlN2M1ODdmYTZhNjQyNDYzOGE5MDE5Zjk1ZWU5ZmE2ZTlhMWY=
2YjhhNGMxZWRiMGI2ODFkYTc5NmJiNzUxZjZkMTFhNTQ0N2U3ZTZkNjQ1ZjE1NGI2MDEzOWY5ZT=
ZiN2M1MDRkNDQ1YTMzY2UzMjViYTUwYjQyNzYwOTcwNTczYzg1NDA5ZWFlNzZiYmEyOTcwYjUy>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DZmNiOTkzMWQ3NWM2YWQxODk1ZGMyMWE3ZDVlNmRmYTEwNjY5MzI4MmV=
iYmYyZjg1Y2VkM2EzNGNkMDlmMzFhMzhhOTE2NWRmYjA2NzI3MTFjZDRlY2I2ZmJlMTRiYjhhNW=
M2NjUxNmVhNGFjMDNmYjEzNDU5MmI4YjY2YWFkOTU3ZDA4YzgzNTJkZWNkOGUyNmE0ODQ2NWI5Z=
DY3ZjBmYmJjYTE4OThhMTE4NWMwNjQyZWEyYTM4ZDJlNjM2ZDlhY2ZlMGMyNDYxY2Y1ZmE3MjEy=
ZmI1OWQxOWQ5YzQxYzI0ZDgzNTdhOWVlNDFmYTA0YTU0MGI2YjU4ZjQzZGJiNjQ5ZmU3OWFiMTA=
wNDlkNDdlMGNjM2M4MDNlNWYxMjBkMDY4ZTc4Y2NmNjk3YjhmYTQ2N2Y0NGM4ZmZkMmI1YmU0MW=
ZiOGIxZDJhYmVmZDgxZDMzZTkwY2M3NGIzN2M5ZGIzMDdkMjI1YTQ0ZjYxZDRlYTlmMDFiYTkxN=
WEyMg=3D=3D>
   Manage Preferences
<localhost:1333?u=3DZGMwMDE5NzQwYWY2ZDc4M2Y0NDE1YzBjZjQyOGU1YjYzNDdlM2MwMjI=
zMDY4NzM1YjNkZjQ5MmY3Zjc5NWIzOGYxZmZkY2E2MDY1ZmYxMTlmZjBiNDc1YjMwZjI0N2FlZG=
Q3MjMyYWFmNjgzOGJiZjZhYjk1YzE1ZDFmZTNiZmYyYzFiZmU2YTBhZDAzZWI0YTg4YzJhNDY0Y=
jBkNjE2NTc5MWM0NWM0ZTA4ZjIyMzMxOWIxMjk1NWEzNTY5YjY4Y2E3YTNlOTYyOTA0NTU2YmFm=
OGI3M2M4YzQ2YmM5ZThiZjRhNmMxY2I4MGI2M2Y5ZjU4ZThhOGY2NDMxZjcxYzM4YTcxNzNjZmQ=
xNWE0NjBjNmNlZWQxODQ0YTVhMDRlZGYzYTBiNmE5NGI1MDM5MjU5MjYzYTIyMTY5NmVmYjFkYj=
IyNzcyZWUyY2JjODE0ZmE1ZmFmOTNjY2ZiMDZmODhkNGU5YWJlMTRlZmM3MzkwNTQyOTVjYzA5M=
GRlNQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DZDI0MWEyZTQ0MzExZWJiNWJkOWJkMzA0MDUzNTE5Y2E5MmRjNDBjMzV=
mNWU2ZmQzOWI3OWNkNTg0MjFhZDk0MzA0MGJjM2M5MDZiNGEwN2Q2NTAwZTljMDExNWMwMGE0MW=
U1MjgwYTU4ZGNhYzRmMDA2NGZkZDMyZWZjZTcyMjgzZTNjYTM2YmM0YWI5ODA1NWUyODQ3MmJlO=
DAxM2Q3ZDQzNDJkNWVlYjFmNzcwZDlkYWE2NmZkZDkxYjZjNTRiNzQzNTdhYzI3NWQ0ZGYyMmI5=
ZDkwZTdlYWZiZDY5MjU2NmNmYWU5Mzc5NjA5YzUxN2I4MjQxNTQ3OGY3ZjY2MjUxNzc0NjQ1NmV=
hNGMxZjM5NjIxNDE1ZmNmZTgwZTVhOTI1ZWZjNDUxYjI5OTkwZDM1MjE3NzRmMGYzODFlZWY5Zj=
Y2NmZiNzk5Yzk4ODNkZTM5YmJhNjhlNTZjYTJjNTI2OGMyMjJhZjQzMDM1Mzk1YmZiZDc4YzBjN=
jIyNg=3D=3D>
   About Us
<localhost:1333?u=3DMjcyNTg5NGQ5MTQ3YWI0ZjEzNWVkODM4ZGFiYmY2MDFkZjQ5Mjk5OTl=
iN2JiMjI3NDcwYjFlODJkMmYyOTYwMDhkMGQ0NjU4YWQ4NDVlZWZkNmVmZDQ5MThiZjlmYTVjNj=
YxZTFjNjcxYjBkM2UzZDEyOTJhMGIzZjVjZjRmODU2ODlhMTgyYTQyMWEwOGQ3MjkxMTBkNWVkM=
TMwMWQ2MTRiNDBlNDA0ZTM4NmMzMDRmOWFkYWYwMDlmYmRjYzZmOWEwZDJhZWExZTQ5NWI0MGM4=
YjYwNWJlNmM2MDhhYzE1YmFhNjRlNmJiYmM3YjNiODI4MDFkYzM1NzM1ZDBhYmNmNGU4MTQ4M2E=
0OGY2ODJiZWI1ZmYwOTRhNDZiYjRmNDE5MmU5ZGI3OWQ5OWIwYjZiMTcyODQ3ZGQwNmVkODdiYT=
cxYWIxNmViZDU1YzcyM2JmYmFlNmQwZmExZDVkOWM4ZTFiNTM5NzU0YTcxYWE4Y2Y2YWVhMWZkY=
TVlOA=3D=3D>
   Customer Service
<localhost:1333?u=3DMWM5ZjUyYWFiYjM1M2FkMTE0ZDQwMjJmMzY1ZjYwZmQ3MWE0NmFlY2I=
4YWQzNDUxYTJhZmE1N2U1ZDg2YzU5N2QzMGUzZmQ5ZGE1MWI1OTczNTNmNjY4OWNlOGVkMGJmOT=
NiNWE2MWZhY2FiMjEzMzE0MDEyNTgyNDg1YmRiMjliMmU2ZTBiODZmNThkY2VjNzcyMTBlOTg4Z=
mM3MzcyMjE0MmRlYjQ0NDFhYmY1YmRmMWNlNTFmYzJlOWI1MDgxODkxMjg4MTg3MjNhMmFiMjRi=
NzY4Y2NjZjExYWQwMTljNjg0MmM3ZGZiYTI0YjZlNTFiNDhiNTJjY2ZjZmNkMjNmM2ZmNDIzNGQ=
zZThlYmE5NWFiN2Q2ODNhYzQzMzFmMjEzMjk3NTgyNTRjZWExMmQ5MTY1YjM3NzAwMzJlNDYxNj=
QwODVhZTEzOTc2NWM1ZmE5YmZkNDU1OWVhMWJkZDkyZjRiYmM4OTQzYTU3OWY1NzZkNjNkYTIxZ=
jI4Yg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DY2Q1NzI3MzM5OTJiZDI2MTA1MzkyMjEwMzk3MjczZmJiZWYzYWEzZGR=
lNjU3NmIzYTRiOWE3NTJiNGRlMDhiZDQ3ZmVjOTA1MjdkYWNlNzVhNTYwYWRlMzM1NGU1MjRiOG=
VkZmMyMWIxYjVlZmRiNDk2NGY4N2YwMGRkYzI0YzI4NzVhOTE5MmQ1N2MxYWU0YWZkYTY0ZWFhN=
jY1ZWFiNDI1ZWNkNTFlNDIyZTIzMmUxMWU5MDZlMjgxNDM1YmRhNGVhNjhlMTU4MTgxY2YxNzMz=
YTgyZjlkYmExM2VjYTM5NDczZmY3NzM2ODBhNjA4ZGY5YmM0Mzc2NWNmMzg=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DYmExOTg2ZTdmODk5YWE2NmIwMTBmZjM3ZDY1M2ExNzIwNmI1YjFmODM=
5ODE3MmJjMTQ3MzUzNjlkMjVjMWQ3Y2EyY2RkYjg4YjdmOGZjZjUyNmI5MzU2N2YzYzg5YzIzNz=
IxZWU0Y2FhNjk2ZGI1ZTY2OTQ2YTI3N2NhNTMwMTg3ZjdiY2FlN2ZjYjYwYzE2NTUyZDBmMTkyY=
TUzOTQwMjgxYjEzMWIzOWQ5M2NlZDNhZjhlN2U4ZTUzNmM3YmU0MTAyY2E0OTJhMTI2YzgzNjkz=
NTY1MzdlZGZmNWZhMzU1YmFkNjliOWYyYTI4ZjYxNzIwOGUxMDMzN2Q2M2I3OWE4MzM2OGM0MmI=
1NzI2YmU4OTdjNDY2NmI1NmY4MDNlZTQxY2UxNzI4M2RlYTI5ZmE2ZGI0ZjAwZjlhOGJiMDQyMz=
JkZWY5NTU4Njc4NTg4YWNkOTg1MDAxYWJhYmM1NGY1MjI4NGI2NGNmOTNmZmMwYTNkZjcwMzU0O=
GI4ZTJhNjRkOGFkOGEwMjJmN2I0MzAwZTY5OTc4ZDBjNjQzYTJlY2ZiMWJkNWQ5NDcwNzNlYWM3=
MmI0MGE=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DNzcwN2M0M2QyZWZiMDZm=
Zjk4ODJkOTAzZjZhNWFiYWYxZjBkODNlYzk1MzI0NDQyNjhlNTliZGUyM2YzNWM5MzZiM2Q2NTQ=
zMmE2YjBjZmE2ZjkzOWIxYjAxN2IzOWQ5OTAzMzAzMmVlNWQ2ZmU3NWJlMDNmOWNmODk3ZDk1Mz=
M1ZWM5MTUxMGU1MjczM2ZhODY5OWJiMDJiNTRjMzlmZGM1MjkxMjVkYTM2ODcwMmVhYzZhZDdhM=
GY3NDQyMzE0Zjk2MWM1YTI4OGMyZjM1YjgwM2U2YTBjNGE0OGRlM2VkODU4ZWM3Y2JkZmExYWZk=
MjUwNTJlNTk2Y2RkYWQwYTM4ODNjOTBmZjE2MjAzYWJkZWQ1NTQyNDUxYTQ4NTQ2NzM1Nzc5N2M=
wMjhmNjlhYzA4MWZlM2MyN2VjOTM1YjVlNTg2M2U0OWRiNDJmZDUxODkyYjNmNzFiY2U0MDJjMD=
M4NTFkNGFmNmUwMmQxYzdiNDc1OTQ0Y2Fj" target=3D"_blank">
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
?u=3DMTY2YTZhOWEzZmYzNTQ5YmYxNTRiYjRiOWNmZmFlMmRmOTNmNzJhYmRlMzY1NGM3NzcxMm=
VmMGNlNzI4MTVmYWY5MGZjYzQ3YjI4YmZhZDc5YzgxYWFmYmYxNGY1ZTFjM2RlNTI1MGNjZjU5N=
2Y2MmQxYThlNGVkZTFiZTk5OWNiZjRmYjAxNTUzMWUzZTk1YzRkODMyZjk0YmE3ZDE1ZmZkOGZl=
Yjk0NWUwMWU1ZDViYzBjMjgzYmVkNGVkNTNmY2M1Yjg1ZWRjMWFhYzEyYjRlZTRiOWI2MjEyNDI=
wZmY5N2QwZjk0OGI2N2MwYjRhYjU2MGI1Y2Q3OTk0Yjg4MzAyNjZkNjNlMDhhZjI2ZjY2MDdjM2=
U3YmQ4NzYxZjZjNWMyNTUzNDk3OWQ4Nzk0NGM5NWQyMjNlZTVhM2RmY2M0MjNkZjJhYWZiMTNhO=
DBhZDZlN2Y3MzM4NzA4MDc0MGFmMWU5ZTZjMGYzMTFhZTU4YmZjZDc2YTBi" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DYTlkMTJmO=
TI0NGJhN2Y0OGYzZTkzOGE1YmU4OGJjZjI4YWQzOGYyNzExZjA5N2UyYmIxZTJjNGU1NzdkOTM2=
YTg5MDA5NDhjMjNhYzdjMTllZDM1ZDQwMzEyN2QyNGZkMjFkNjJlZDljOTk5MzBlM2U2ZTRlZWI=
0OWFlNmUzZjhhYTk3OTJhZjZlNzM1MmRmMmI4MjU5MDg4N2Q4YWJhOGE3M2NhMDY5Y2I0NTU0MG=
NkNjc2Yzk4NjE1MzFhYjUyOTVmMDgxZjFiMjFiNTdmNDkxZmVkMjk2ZmRiYWNlNTZlMjlhZGU0N=
2NmOWQ3OGQ3OGMxNDI2M2VjYThkNTU4Y2U0M2QxZjdkZjcyNDY1OWIxNmVjNWQ1NTdkMTc2ZWU2=
MWQ3OWEwNjJkNGIzODY5Nzg4MGUxYjFiYTA0NzdkZTE0ODlmZjgxYjIzYmI0OWM2NDkwOTg4NTZ=
hN2NhMTEzN2ZhNDAzNDZmNDFkMDY4YjBiMzg0YzZiZmM0" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DZjc5NDA=
2ZjFmNjQzMzM4NTRkODY0MTFkMmVjMTI4OTkyZTAxOWViOGFjOWY4ZDdlMzkyMjhiNmVhMGM4Nz=
VkNTQxMTczZTEwOTM0ZWRlNGIwZjBjY2MxMzQ3NGI3NTM4NTI4YmU0YWEzYjc0NjBiYmVmYTZhM=
GZmM2VlNjA2MTQ2MTIwMWIyNDE1ZTM5Mjk1MDQ4ZTQ0MjQ3ZTM1OGY4ZTg3OTZiMDY1MTYyOTAy=
OGE5MTdiODQ2MzAxNjA5OTlkYzVlYWI5ZGI3ZmM4ZTI2NzM3ODA3ZjNmZGQ0ODIzZjkzNmY2NzF=
jMWNhNjFhYTRhZTI1N2U4YTAwMmY3OTMzMTYyZWM4MWQ3M2EzYWI1NmQ3ZjA1ZGM1NDFmODRlY2=
I3MjVmNzc1OTU1OWMzNzc4YTgwMGM1MjVmYWRlMjliMWQzNzBhODkxYmEzZDk2YjRmNDc2ZWU4N=
zk5YTc1ZGYxZTgxOGExOTE0NzMyM2MxNTI0YTBkNDBjNTVi" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DYzRhNTA1OWJh=
NDM2MWFlNmU1NzhiODQzOTA3ODAxOGQ5ZjUwZTUzMjQwNWFjY2U4NjExNmQ1OTIxYTJlNDMxODE=
zZWNhZGVmMjhmNzE1MDZlYTQ3YjNkMjkxMmQ2N2ZhODYwMWY0MGZmM2Q3NzVjMDM0YmFjMjYzN2=
IxOGVhMDM5YTcyMjVkODE1NGMzYzVhNzM4ZGU3YzQzODkzYWU0OTRjN2YzZjJlMTZhYmFhYmU4Z=
GNjNDRlY2E5NDBiMDA4MjY5MGEwYmFjNWU0Y2EyNjhjZmY4OWVhMjFmOGI0NGVkOGFkZTY0YTc0=
MDczMDY0OWRhYzI2YzdhMDBmYjk4YWYwMjIwYzdjNGRiODI2NmE0NDA3ZjIwOTEzYTU1MTkwMTk=
5OTA0NzgzMmY0M2Y3NTBkMmEyYWFmNzg3ODNmZDA1MDdjYjY3N2JmZjhiN2FhZWRmMDdhODJiOT=
hhNjg4NzJmNWUyYWExNTEwNGI1ZGUwOGZiNjVhZmQz" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DZWMwZThhNzFlY2Q0M=
TRlZjBiMzhjMDllODZkNDJhYTk3ZTI5MWQzZmE1Yzk3YzVjNDU1MzdkNjQxYWRhODdhYTNmMWU1=
Yjg1OGViMDQyNmY1NmVjYTliYzczZTI1NDgzOWYwNTk5ZGNiZWIzMWM4NjM1ZDkxOTA1YWExODB=
hZDI2MjdkMzdhNWVhZTFlOWYyODFmNGNjZDg4YjkyOWU3MDRlMjc1MTM2ZjI5OGJmYWE0MDk4MW=
NlYmZhZDM4MjcxMjQ0NzBmYTQ3YzNkNDlhZTEwZjFiZmVhMDUwZTEzZDMwY2I4NzU3ZmZjZWFmN=
jc0NWVkNmI0ZDk0MjY5MGMyMWQ3ZDFiNzdkMTBmN2Y4M2ViNzc0NzE3NDFiMGVjMDU1ZTFmZmUx=
OGNkNTZmNTEzMjllODhjNjdkNDMxYTJhMmU2OTE4YzA2ZWRjODQzZWEyMTViYjFjYmYzNjc2OWF=
lMDdkYjJkYTZjOTQxZWRmN2M1ZmI5YTgxN2M0" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DOWUzNGE4ODE1Y=
mMxMmE1Y2E5N2MwYTVkZDM3Mjc5NWY1OTQ0ODlhZWYwYzUxZGI4ZGFlZTBkZGU4Njg1M2NlZGYy=
OTA5ZDM2NDI2ZWViODQwZjdlOTQ1YjdiOWVmYTgwMjJmNzVmNTQwY2I2ZjMzNGIzMWMyMzk5OGM=
5YTE0YzRkZDczYTk5ZjVkMTc5OWZiMjMxZTE2OTBhYTdjNDY1ZWIxMzQwNjc2YTdkNTRjMGNjND=
M5OGU5NmI2YjM3NWUxNDg4NzE3Zjg2NDZkNzM0ZWM3ZTMwODNjMDNhNDcwMzJmNjIyNGViNGUxN=
jY5NDQyNTMyNTU3NTg4NWMzMDhjYzA0OWE4OTVlODUxYjgyZmQ3OGFhN2U2YzNhZjQxMTkyMGYw=
NDI2MzM5N2E4NGU1NWI2YWViZGRmZDk3N2QyMDEwNTM0NzQ4NGUyODg2ODAxNTIxOTdiNmI5ZjM=
xNjMzYmE3OTJkYjk2MGUwYzljMjNmNDk3YWRhOTc5" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DNDg3YzE=
2MmMxMjA0OTg2ZDIxMTcwYTE4MzM3OGE2MDUzNzhiZTdjY2UyNjQ1NjUzNTViZWY5NzZmMjI3Mm=
Q5NzZiYmJkNDE1MjEyODQ0OThkYTg3NDllODc5MTA1YmE2Mjg0MTQ4Njg3ZTYwZTljMWQ3MTQxN=
WZiZDNiMzY4ZGFlNTJkNzA1YWJjYTk3ZGUyMDkyZDMyOWI0YmIwMTA4ODI3N2Q3ODUwMDhkZjhl=
NjZiM2FjNzk0ZDQ5ZDRlM2QxNjhmMmMwNTYxYTA2MmM1OTBhNjkyOWE2MzI3MDdjY2M3MzlkYjg=
wNTQ4MjdkNjg4MDIwNjkwNTI5OTA5MGIyMzI2ZTllYzRmMTdhMmQyNzI5NGE3MTdhZjBiYzQxMm=
ZlODdmZDUwY2MzNGU3YTUwYjk5NTMwMTVjODBiYmEyM2I2YjgyMWNjYWRmZmU3ZjAzMGU3Y2E5M=
GU4NzRiZmZkMzI1OThhMmI4NjY3MzRkN2Q3NzAyZWFlZmY3MGJkNw=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMTYwYTJjYjY3ZjcxNmM1NWU4ZTE1ZW=
RhNWFlZDZlYjllOGQ4ZmE1N2Q3ZTQ5Y2MxMDZhOWE0Mjg2ODAxMjRjYjAxMjg4OWUwZGU3MGNjY=
WEyNmUyNjE2NTdhYmVlZjQxNTdjYWY4MmIxZGMzNWRkNDAzOTA4NTU5NDczZTM4ZTZmMGQ3Nzhj=
Y2NjNTY1ZmEwNjMzOGRmNDg2ZTM3NTQwN2E3YzRiNWI0N2VkMjA2OTliNzQ4MDFlMmUxYjhmN2Z=
mNmFiODBhMTczYTlhMjM0NGNlODA5ZDJmOGYyZWJhNmM2ZTI5MTNhMzMzODlmMmMyMDg3YmZiOT=
kzNWQ2MGI5YjRjMjczMWUxNmFiN2JjOWMwYTRjZDcyNDlmYjZhMTdhZmRhNGNmYTAxMzU1ZThhN=
mI1MzVkZWIyMWQxMTc5NWM2ZGIzMDFmNzhjMTI5NTA5ODQzMjY1YzE3YjRjMmE2MTg3ZTI2ZjYz=
Y2U5NzJkOGNjZjMyM2I0MzI0" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNmIyMmE2ZjBkOGM0MTJiZDYzYTQ0MD=
UxZTM4ZDkyZjA2OGRjOTI3ODQwYTZkZjNjYTBiOWEyMGVmNmM3YjkyMjZkYThhYzQ0NzlhYzU0M=
2FkZjA2OTg3NWMxMzIzMTBjMzUyYzUwMzMyMDMyYjRkNDBjMmY3NzNlYTNkOWY2ZTEwZGIzMDdm=
ZmEyMDkwYzZiYmQ5YjJiMzhhMmU2MWQwY2I2NjAwYjVmZWZiNGNlZjVhNTI0YjMwZTk2MTA1MjM=
wZTVmZDYwMzhjM2YzYmUxNDU2NDc0Y2FiOWU0OTNkMGU5NjgwYTdhODkxODU2MzFkMTU1MmNiZD=
RmOGFhZmY5YjczZjFiMDEwODJkYWNhODU1NzY4NTQyMzkxNWE4OGFmZTY0NmJkZTczOWVjMWJhY=
TMzM2FmMGRhZWQzNDdiNjQwZmQ2ZTcxYTMwMzM5NmE1MWZlZTEzODU3YmExMzc5ZWI4MWZmZDgx=
MjA0NWNkMzUwY2Q0YTlhY2Nj" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DODhhMjlhYTBlZjYx=
Y2NjMDI1NTkxNDNiNGFlMTFiZTUzOTk0Mjk1MDNmYjBiMjM5MTRlYzY3NjliMDM1YzVkOThlOTg=
yM2ZiOGZmYTRjZjkzOGYwYzZhZGZmM2Q4MDEyZjlkMzMzZTRlN2E1ZDdmODBmMGQzMjVhMjNjMW=
YwMzYwM2UzNzM0NWM4YzVmNGMxOGE0NTM5ZThiOWQ1OGM2MDZkMWIyMzA4ODMxZTExM2ZjZjhhM=
2NlNWE0ZmYzOThjOTE2ODZlOTI3NDE4ZmY1MWIzYTAyNDk0MThkMzkyMGZkNGFmNmJiYjg4NjAz=
MjVhYjc3MTI0MGI0ZTM0NDQ5ZWY4NjQ2MzYxMDY3M2RiYjhiOWZlZWMwZDE2ZjEzNmQyMTdlNWQ=
1MWM3NjRmNjY3YjIwZTdlNTM4MTJhNmM1N2IyMWRkODcyMTljNTQxZjU4OGEzNjk5NzE4ZGU3Nj=
hlYmE0ZmQ5NWQyN2Q5NThhZWJjOTRmMWNjZjZkMjBkNA=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNDU0ZjUzNDcyNzhm=
ODljZWMwZWRjN2Y1YWE2Y2M3MWVhNjJmZjI4Mjg3MjAxN2EzYWVjNTA3YzczOTZiYjQzMDA5MmE=
4NWM5YWMxM2NiZGJhZGNjYmJjNTI0ZjFjNWNlZWE4ZmI1MWFlYWYyYjEyMTEyMzBhZDllMTFmYj=
k4ODkwNjg3OWU5YjdlOWE0NDVmYjQ4MzcxMmI4Zjc0NDBlMWVmNjYxMGI4NDI1ZWVlNDEwNjAyZ=
DFhZjFjZGUwZTMzZjA5ODc4YTE5YmQxZDFiZDRlMjNlZWIyY2MzNjg2NzBjM2QyNjlkNGZiZjZh=
ZWQ1OTM2NWFhOTRhOWI1MWUxNjcxZDkwNDllMGJlZWVhMTM0M2Q2NzU2NzE4NTk2MGIxMTBmNGQ=
xNWI3MzJhYWZjMzkxODU0OGVjMWZjMDZjM2U2NzcxOWQ3ZDdmOTc4NDQzMmQ5YWFmMmZiYjllMD=
Q5NDRhMjUxYzYwODIyOGQzYzZiOTkzZTJlNWUyYjU3YQ=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOGJlNjcxNmJmZTMx=
OGFkM2ZiMjIyZGMxYmViNjM4YWQ4MjdjY2Y3Nzk3NGFmM2Y4MDQyYTY1NTMzNGFmZDk2MDFkOWV=
kNjk3ODljMmQ3NWNmYmY1YzM3MDhkMjY1MTNkMGM3MDlmOWFlNzkxYzk1MjJhODdkYjkzMGJmZW=
ExZmNlYzdjZTZkYWNhMzMxNzg4YTdjNjE2MTFhZGM5YTliYzQ3MjRmOTEzODU3ODdkYzc5OGI0M=
GY0NjgwZDI5NzE1YjlkMTQxZGU0ZDQwNTY2M2Y1ZjAzOGY3Yzg5ZmUyZTU5YzA1YWYyZWVkNDVh=
ZGQ5OGMyMDQyOTA3N2UwZTQwODU2MDYzZmY2ODIwNGQyNmY4OTY0NzA0MWJlYzFlMDI3NTgyMzJ=
kN2Q4MGUwMWVhNDZhNjQ0Yzc4OGM4YWExNjVjOWQ5MzA0MTgwY2Q5ZTdhOGU4YzI4NDNkNGE3YW=
I2NGY5NjNmN2M4MzQyZjNhYTAyY2E4MTFhY2ExZTA1ZA=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMWQ3NjNlM2E4MTk3=
MDYzZmYyNTIyYmNjZjM5OTMyNWNmZWYwZjdkOGMwYWUxZDM0YzNiMTc0MmYxYTNkMWExMzVhZWF=
hZGM4MzliMzc5NzEzOTliZmZmZWI1NzI2NTU5ZGFmNWQ5NmNhYmJmODE2MjI3YjdiZGM2YjNlND=
djOTMyNDBkOGE2YmEzMjEyMjQyNGNlNzk3ODhiYTdmMWQ2MDY3YjVlNmE2NTk3MDhjMThlZTIyN=
2NlMzUzMjQ1ZjZmZGIyMDBiYjY3ZjI5N2ZmOTcxZmNmMDgyYjNkNzM1NmNmZjUxNGUwYWQ3OGFj=
YjY5OGQ4ODRkOWMyOTMxNDJiMzE1YmUyZTllYjEwNjQ1NjJmYzEyY2U4MzcyNDBkYjU0N2QwZjM=
yYzEzNTA4MDlmMjkyM2U0ZDY1NjMyODA0MWRkOTRmZmE3ODk2OWNmNDExNmM4Nzg2MWU0OWViYj=
BhOTRlMDRhZDFhZmZiZTJkNmMwODc3MThjYTU1NGY0Ng=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNGU1MjVhOGZmNjAzOT=
NjMmRjMGZlMzNjNWJkZTI5ZDI5ODAyMDQyMGEzN2RkOTlhZTg0YjA2ZGYxYmEyYTYyN2E5ZGUzN=
jRlYWMxMTZiMzliZWMyMzk3MWZlMTg4ZWUxMTY2NGJlYWQ4Y2Q5YWJiMDE2NWUxODA2YmFmYjI0=
YjIyZDg1MTcwYTAwZDQxYjc2NzE1YWM0YmNhODIwOWZjYzcwODBiNDY1ZjQyMDg4MjkzMDRhZTM=
3YWRmMDhlNDM2NTk0Y2NjYmVkZGJlODMyZDRmN2RkMjM0MDVmNTg2ZmJjNDhmNmQzZWQ5ZTY4MT=
liNzVmMmJhMDY2NzE2ZmM4ZDg0ZDM3ZDQyYjVjNjUyYzkxMmI1NzQyMWMxNmQ0YTk4ZWUzMGMwM=
DIwMzc3OWMzZWJmNmIwYjQ0MWQ3ODUzOTQ5YmI5NmFiYjE3MjlmMTlkZTFlZjdmMGI2NTgyNTIw=
MzI5NWFjYmZmZGFkMTY5NDBkOTFiNzcxMjFiNGFiMQ=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DODVjZTI5MzJiYmRk=
OTUyMGM5MTRlODk3NjU3MTYyZjBmMjY4NzZiMmU3NmNlZTJkYTM0OGNkZmU2YTExMzRkZmQ5NjQ=
xNTY5ZTUzYjg0YmIzN2QzZWVhM2I1M2RjOGMyMmZlYzBmNTZmMjFjOTU3NmM0MDc4NDA0ZmViYW=
EyNjY1YjJlN2VmYTc5ZjdkY2M5ZGU1MjdmYWFkYjVlYTBiZjUwMjU5Y2Y4NWY4N2FkM2E2MjhkN=
DVhNTY4YzM5YjQ3MzRjNTliYjE5NzA2ZmFlOTA0Y2JmOTI4ZDA3ZmMyODZlZGJiYzBjMWNjNzhj=
MmY4ODY4YTljM2I0YTAwMzM=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DMzNkMTU5N2U5ODhlMzUyYWI4MTRlODYxNjc2N=
zFmYjNiYjcwNjhkNTA3YWNiODQyOTA0ZjkyMzQwMDg3OWQ1Y2FlYjIxNzkzNmJkOTM4NTY2MDhj=
NGJkY2IwOTQ1N2MwMDNkYzAxYjJjNDFlNjQ1ZmFmODM0YjEyMWJkNzliZjc2MmYzZjU3N2E4YWN=
jZjc3NzJhZmNjMmZkZjg0MDAwY2NhOTEyZWQ1NjUyOWU2Zjc4NTczODMyYmZiNDUwMGQzNDJjMm=
QyMjFhZjQxYTM2YmU1NTBiZGQzZDgzNGMyNDY1Mzk2NjZjMWVjNTBjMWJkOTJkNzZiZDJkMjc0Z=
DYxNjI4NzM0OTlkNDA5MzEwZGYwZjg2MDRlNjQzMjZjYzFhMzVlMTQ4NWIzNDEyNTczNmRmZmM3=
ZWU5YzY0YjkzMDVkN2VmYjMzYjM3NTg3NDRlMjRlZDI5NGViNjY5YTllYmM4ZTA1OWM3NmY2MzF=
kYzcyNjU5NjIxNjNiOTI0Y2YzNTgwMmI5OWYxZjBiZWZmMGVkZjFmNjA4MDQzNTExZDIyMDJjZW=
RjODA1NWE0ZDQwMmRiNjU0YTg=3D" style=3D"font-size:12px;line-height:134%;font=
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
