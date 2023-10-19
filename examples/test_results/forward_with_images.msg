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
From: localhost:1333?u=3DMjVhOGNmMDhjOGMwOTNlMTNjMDI4NjAwNTcxZjJiOThmZWQ3NW=
ZjY2MxMjQ4NWZhNDY2OTM4OGZiMzVmOWJjNjc4ODA5YTIyYTBhYWNm <mail@eg.expedia.com=
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
<localhost:1333?u=3DMWJiMzZmYjdlNjEyNGZhNWM0MTJlYTZhNGU5MGIwZDkxODRkNDgxMTU=
1MzA2MzViMGU1YzI0MTM5YmE4ZDUyNGJhZmFiZTUyZGY5MDQyYTMwMTgwNDYyODk2ZTFmNDU2Nz=
gzYzQzZmVmMjExZGE1NGNhNWIyYTg5NWYwZjgwYTU2NDU0YThhY2M2ZjAxODZmNTQzNGE4MjYxN=
jcyMzI1ODg4MWJmNmVlMzA0MWYwODEwMjE4ZDJmNGI1NTJkMzhlNjg0Njc1NjU5OGE4ODhkYmVl=
M2QzMWFhYzY2ZDkwNjVjYzkxMWIzYjU2ZDI2M2UwN2NiNzkwYWRjN2M0YTMyNTMzZWNkYmY3MGR=
mN2QyZTUwYzFjZGViOGFjYmE0YzBlZGM0NmUwN2E0YzE0Y2ExNjM2NDEyYmUyMWZiNzViYjRhM2=
JlMjE3MzU2YzA2NTQyOGJhYTZlOTIyY2NhZWMyMjYzNWFhZmE0NmI2ZjBiNjNmYWM1ZWEwMzA3>

* The Travel Edit
<localhost:1333?u=3DNTM4YjVjZTBiNDUzZDhiZmI0YTZhOGE5Y2ZiOWZhOWMwNjM5ZmE4NjB=
lODUyNmJlMmI1NzUxNDFlOTgwZDJmMzc1ODM0ZTM5Mjk1YWM4ZThkM2Y2M2NjNmI0NjZhZjA2OG=
RiODY0MDNjZmQ1ZDVhM2EzMDVkNDViOGI5YjU3NjgwZGQ2NzNmODk5MTc4NTNkNzY1NmNkNzA4Z=
jI0NGRmZjE4NjIxM2Y1MTg4MTU2ZGMxYmFlMjk1YWQ0NTQyNTdlNzcxY2M5MDI0N2JjNzQzNjgz=
N2IwYTNhNWRhYTRkYzc1M2M0MDZjM2FkMWM5MDVkZjdlMTAyMWE5ZmIwMWI1NDhhZTlmM2ExZWI=
4YjEyNmM3OTY4OWY3NmRiMTRjM2ExYTBiNWZiZGEzMzg1MGZiZTAwZDM4Y2YzNzdhMjQyNWEzND=
JiODAwOTFmZmQ3YmZlNmRjMWZlNTg3N2ZjNzcyZWVlMjhjOWNjMDQ3MDcxMjZmYjgyZGVjMDhk>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DODc4NmQ2NmY1ZmU2MTZlYjQyMDNjYWM4OTNhZTIwYjFmODMzNWRkNGV=
jYWY2ODAzNTUyMTE2YjZkMWE4ZTRjZWY1YjBhN2Y5OTczMjY5MzdjMTFmM2I4OTFjYjk4OTFjNz=
Q5N2Y4MGMzMDNjYzFjNGFiODgxM2NiODJmYmNhNGRhMzA0ODFhNTE3YzkwODNmODdkOTgyMDcwZ=
DMxZTA1OThhYTg3ZjgwNWQ0YzY0ZWU2MjA4MzZjOTE0ZTA4MjA4MjgwMzYyMGEzZDgxNjg4MGUy=
OTY0NzZiN2JjZjM5MDQzMjFhMWE5ZDMxNTM0ODkzN2U5NGQ2Njg4Zjc0MDBmN2YzNjEyYTRhODR=
jZDBmMmYzYWFjYzVjYWQzNzViMWM3YzJkNTdjOGQ2Y2FhYjg1MjhlOTI4MGFlYmYxNWE0ZWZhY2=
Q0Y2ZmMGJkYjVjZWY0ZDY3ZjIwOGM1ZmM4NjMyNGZkNTdjMTQ4ZDAzOGE5MDgxMWFiMGViMTg0>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DZjIzZGYyNmRjZTUzYTBlNjhlOGMyNDc0OGNjNDhlMmJjZjdkYjdmNjM=
5MjZkNGZkNjYyODlhZDE5NjVmYjhkZDA1YWY2YjhhNTc1MjcyZDI5MTY0ODljMmIwMTAwOTE1OT=
M4NWE2OWUxZDEzYWI1YWIzYWNmNzlhZTFmYWVjOTkyMjYxMTFkZTUyNWM5N2Y3ZDNjMDEzYzdmZ=
jkyOWIyMzk4ZDVlYjlhYzU0NWM3NzY4N2UyOTAwNjNkZWQ2YTc4YjQ0NjczMTIzMTRlM2VjZjVl=
YjdkMDE0MDczZTZiY2U0MmQwMzFhN2E3NjA0ZTczYzYwOTFlMjZlZmEzNTIxYmIwOTI0MDZiN2M=
1MjEyNTlmMWU5ZTFiMDg1YjgzNDBhMjBhZmVhMWU2NjBjZWNiNzUxYWQ4MDNhZjFlZGRiZmIwMG=
JmZjU0MDNhZjZlMmNkMWY2ZjllZjdmNGRmMDAzMzY0MTNjYzU3Y2RkODZmOWQ1ZjM4OGNkODNh>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DOTlkMDdhZDI2NGZmOWYyYWI5NTAwNjUxYWE4ZTAxNmJlNzVmNzE5N2U=
5ZTcyY2NiMDdjOWRkMjljZjI0ODY3MjA2MWU4NDRlM2Y0NTY1YmVkZmU3NTAzNDBkZjZlNTQyZT=
ZjZjU5OTI0NzQxZTNhMzUyNjhjNGU0YTE3NGUzZTU2ODI5YzU1YWFiNDRiNDc1ZThjNzg2MWFhY=
zIwYWQ4YTYwMmYyOTVhZWM0ZmExMzBjNjZmNTJkM2Y5NzlhNzMzYjM0MjhlNGYxYTU1MmI3YTYy=
MWY0ZmZlNGU1YjkwNTY4YjRkZjY3YzExZDI4ZDZjMWNiNDgzYTA4NDkzZmZmNWJmNjllN2I4YjI=
xYmYwMWQ3ZDc1MmIxMzgxZTNhZTliZTc4YzZjNmZkNzQ4YzhhYjNjYTcyYzIxZTEwZmQ2YTUyMj=
UxNzVlMDQ1NTJiNjNmN2I2NzM0MWM1YTUzMTA3ZGQ2ZDRiMWI3OWZlMTYyYzU1OGJmMWYzZDdj>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMmViYTM0MjFkY2VlOWM0ZjBiNDUzYWZmNGI1ODdhMDkyN2I5NDg5ZTg=
4NTZlZDI4OGQyYTZkM2EzZGFhZWYwZWVhOTA1ZjQ2Mjc4ZWY1MjY3YjdmNzliMmU0MzVkYTRlOG=
VlMWY0ODI4NjlkMjA1NGY5NzEwOGM5MTUyNmEyZWUwMDc0YjA4YzcxYjg1Njc1ZjM5M2IwZjg3Y=
zNlMjQ0MDI5NmNmY2RkMDk0NzQwNjE3NzFkMDUzZDAzZDQ4MWUxNmQwY2ExOGFmM2I5YWU1ZWNm=
YTU0ODYxZjhjY2IxMzdkMmUzYzU4ZWMwMWVkNTBkZTU1MDY3NDcwNzJjODIzYWE4ZDZjNDk2YzQ=
5NDk3N2JlODhkYmQ5ZDliMDVmNGI5ODc0ZGI5Mzg1ZDEzMjgwODE5MzhlZmVjNjcwZDQ5NDRkMz=
E5OWM1MGI0N2I3NGJjNTEyNWMxMWM0M2MwYjkzZTBkNmJhYmE0MjQ0ZWIyZGQzMzg3ZTk3MTk2>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DN2VjYTdkYjEzYzU1YWMyOGVhMzRmYWQyNTA4MDk0YmJjODA0YmQ2MmI=
5MzhjMDU5NTg2MzZkNzRjNDczZTgyZjMzNzk3MmQ5YWI2YWU1ZDc5ZjNlNzQ3MWFiYThkM2VlNj=
djOWViNTgwNTZiYjc2NjljMTU4NmRhODJkMWNiZjUzY2QwM2Q3Yzg0OTc1YTI3YzIzYjhmYjA5Z=
DQ2M2EzMzE2OGYxNTE5OTI1MzI2NWUzNDk3NWFkYzNkY2E1MjA2ZjJjZGIxZmU4NTM0YWNkNTEy=
ZDE0NmJmYmExYWMzZTYyYjVhYTNhYTBhN2FmOTcyNDY3OTRmNzdlZThlNmI0MTRjZTM1NjVkZmU=
1MTMxNmY3NDc2ODQ3YmNjOGIxMjY0OTlhYzcwODExNDA5NWI1NWU4ZDgxMWFmZmZkMGExNDg1MW=
E1N2QzMGRiZjA5ZGM5NTRhODU0ZGJiOWY3MGVmNWFkMDhkNzJjYTQ5YzliZGQ2Njk5M2MxZmYw>

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
<localhost:1333?u=3DYmUyMWM2NDU5Yzg0NzU4ODFjMjkxN2I5MzliOWZhNTYwMTI1YjhhOWM=
5ODM4OTg0MWEzMzg0NTY4NTRiNjE0ZThmYTU1NWJiNzgzMzBlODJmM2VkN2M4NTdmMmU5ZTUzNW=
UyY2UyOGY4ZTIxYzkyMzljNmE0ODg0MjZjNjM2NGNhMzU5NWQ4Nzk0YjYxMDQzYjFiMWMxNjM0Z=
TdhYWIyYTI1NDRmMWZiYWZjNTY2YzRmOGFlYmIyNDM5YTgyNjZmN2Q1MzE3MWY0YWZjMDhmODlk=
YmVhMTEyNTRiY2E4ODk3ZTA4OWY5MmNiYzQ2OWVhZTFlNDgwYWZhOWViMzkyNGY0NmI2ZDgyY2F=
lM2ZhNjQ1OTk1NGUxOWM3ZWZiYjBiMTBjMTg1ZTQ2NzhmNjZiYmQwMTIwMzBlYjA4YWJjMjYzMm=
NlYzk3NTA0MDllMDNkNzAwNGQxZjI4NGQ4M2FkNmQ0Yzk2ZGEyNDU3ODNiMjdmM2I1MzYwYmQ4M=
2Q1Yw=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DZDQwNmYwMDU0MTQwZTEzYmYyMWM0YzY0NTBhYmZlODM0NWFmMTYwM2Z=
mYmJlYjQxZWVmNjY4MTgyZjRiYWFkMmZhMDMyMTcxNzM1YmY5NWI4MGU1ZmNkNmQ1ODNmMzNmNW=
VjYTRlZGZmOGUzMzU3Y2FmZGNlNTk3NmNhMDg3MmY5NzU2NDlkYTAxNzU1YmY3OWQ3MDhmYTI3N=
zgxNTc3ZDBlMjY2MWFhZmE4Njg3MzgxNzI1MTY3MDJkMDEyMTU3YTA4ODk3NGU3NmY4YzVjZjU4=
NWFiNDYwY2FjYjMxYjRiMmQ1NzM1YmIzMTFhMGY3ODcxMGNmMTIwNmU0OWI0MGY1ZDc3NDQwYjI=
0N2E4Nzg1ODk4NzIzZDBhN2NhZDExODliMDUyMDM3NDg5YTMwZTlkZjhhN2JmNTgxMjBiNDNlND=
c5OTI4MmUyMjY3Mjg4NWNjNmE3NmE1Zjc3YjhmMTRmYjQwYzBhZGI0M2M4NzY4Mjc2NTEzZmFm>
  [image: Google Play]
<localhost:1333?u=3DMmQ0MjliYjg1NTc0NjU3MTQ0NjU4NWExMTZhNmViZmIxZGFhOGUyM2Y=
2ODc1ZTZiZWNkNzU4NDIzMDQ0NzRlYmQ5MzJkOTM3YjFiZGZjODY2MjllMTczOWYyYTdhOTk0MG=
MyYTBhNTExZjY1OGU4NWE0ZjNhMmEyMjQyNTgzODRhNzNjOTNjMGI2MjBjOWMyMWYxYWFjMTVlN=
zgzOGFkMjlmZWEwZjI3MzU2YWE1ZWQ1YTQxYmRkMGY3ODNhZjgwYzAzYTc1NWU4YjBiMzhiZjE3=
NTJkMDY5YjFmY2MwZDcyNmU0NmIzZGIxZTY0MDQwNTAwZGVhYzk1N2VjOTI2ZDY3YWVmM2UxZDV=
hYTkwMDk5MGJhY2RmOWVkYTNjNTk2MDllMDJjODU0MGZlZWE1NzkxY2U1YzlmMGQ4YjJlZmExNT=
k2OWMyY2EzZjM4YzEyMDZhNjFjYThmNzZlMzU4ZWI1MDlhZDczNzYyMmIyMjI0ZGY4ZDJlMzk3>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DOTYwY2QyYmYxZThlM2U4ZmMxOTc1NGFlYzYyMzBkZmI4ZjA3ODUwZjd=
lODkzY2Y3NWU4NmRmMWU3MDljNmZhMzFjYzVlZjY0YzY0NDBhOGNiM2RhODE1OWI0NDE3M2I0N2=
RmNjA1YmRhN2NjN2RhNTkzOWRkY2EwMjYxMzFlNmI0ZmRkY2UzMGNjOTI0ODU2YWM3MWVkZGI3Y=
zU1Mzk2NTNjYWUwYjc0NDRlOWE0MTkwM2ZiZTE2NzQxMjZiNDNjNDQ3NTFkMDQ2YjE2ODMxZGNh=
ZDEwMzgxNTE5NmM4MWM0Nzg4NWI1NzYzMzc4NTM3MTBjN2JkNGMyOGRiYTMxNWJmY2Y4ZGVkNTE=
4NmQxMDcwYzZmZTNlYzJmZmQ5ODZhZDI5YmJiNTM1YzBlNzc3ZTA2NDM5ZGI4NTJhMjcwMmQ3Yj=
dhZDJkMmM1OGM1MTY5NjdiNDFhNGEwZGI4Y2EwOGNjZTNjYjViYTA1MjFiMmU3YmM2YjlmNjkwY=
mI3NQ=3D=3D>
   Manage Preferences
<localhost:1333?u=3DZjJiMTY3ZThmN2MyZjkyMGIwYzhkMjg1NzkxMmM2YTIyMThiNTVjMjV=
kMGU4MjJiM2I1MDM0NGU5YWRiMGJhNWFhMWQzMGM1MzhlZDEyNzVmMjdhMmUzNTMwYzhmMWYxNm=
RmNzJmNTQwYjk1MzBjNDcwMGE3NDk2MDA3MDBjZTliNGNlM2I1ZWRlMGZhYWU3ZDM1OWM1MjBhN=
jIyYjAxMzhiOTJlODU3ZjczNDlhMGZlZWQ5NjM4YzBjOWUyNDUyM2ExOTA5ZjY2OGJlYzAzNTQ4=
NmNiZTAxMzI5NTEwNGUxNDI0NjA1OWM2NzdkZTA3MzZiN2RmMDAxOWMwNWFmNzM2ODI0ZTI1NDV=
kNzhmZTlmZWM4NTAwYzAxZDcyYzc3ZDUwZDVjOTAyZmRjZGY1OTRmZmQ4NTdjMzBhZWU5M2VlND=
FkYWNiOTdiM2UzN2I3ZmNjNjY1MzA3ODQ2OGY0MDk5NmUxMjA3YTdhMjE1ZjhhMWNlMzU2ZWVjO=
DdiYQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DNjY1M2NiZDlkOGZlMDcwNWMzOWUwNTk2OTA5NjgyOGFhODRiNjAxNzB=
lYjQwMjU5N2NlMmI1MjI1OTFiYmU4ZjE2NTliZWFhZTkxYTI5ZWJhZjUyNTFkNTQyMDNhM2JhM2=
NlMzU0YzdmZmJlN2EwZGFkMTFiNjcwYWNhOTRmZGI2ZDBjNWQ5YWNjNGQwMzg2YWE4N2NkNjY3M=
WZiNjdlMWYxNzIyNGUzMGMzMzMwN2VhOTRkYzA4ZTM2MWRlOTFjYzMzNjUwNTY4MjI1ZDY3MGU2=
Yzg5YWY2ZWEzODI5NmVlMTAwZTcwZmFkN2RhOTZkNGFmMzZmODMxNjU5YjY3ZmZjMmNhNDEwMjA=
zMmQ5MDgyOWE2ODgyNjAwMWI3ZTU2OGE4ZjcyMjQ1YWQxYjA5NzY3ZmU3ZGRhMjRkOGMxOGQ2ZW=
YzNzMwMjg5YzNkNjNlYmU4OWExMjFjNjBhM2E3YTAxMzA0OWYyMWY3MzJjN2E1ZTE2NjA5MjU1Z=
DQ0MQ=3D=3D>
   About Us
<localhost:1333?u=3DMzQyMmYyOGY0NjcwMGI2ZDA0NDlhZDMyODZjMzRjODllNTgwMDk5NmV=
iN2VmZGViYzdjZDYwYzNlNThiOGE3MzFmNTMyNGU2NWY4NGIxZTY3NDFlYWM0NGVkY2Q5OTk1YW=
RlNzQzOTI1ODAxNjYxNzViYjIwMjUxYWUxNTczMzY0MjBhZGNlZTkwNTM2YTk0NGViYzJjOTU0N=
jNjZWNkMmFkMTM0Y2ViYTllMGVhYWE5MGQ4NTkxOTNjOTA0YjJiMjI5ZjEyYWI2NjczMGE3Njdj=
NmU3Mzc0Yjk2NWVlNzMyOTRiYWYyMmUzN2QyZWYwYzg2OWFlMzQzYzE4MWRmYzM2M2E1YzYyNjE=
3OTQ0YjMxYWU5MTIxMDVlZDUzOTBiZDNiYWVjNWYwODU2OWRjOThmNjQ5MjZhNTY1MGRmYmMyOT=
EwYzBkZTg1Njk3YmFmYTNlNjhlZjMwNzRkY2VhMWFlZGIyZjBiZmJkMGJkZjVkZmNjYTNhOThkZ=
TI4YQ=3D=3D>
   Customer Service
<localhost:1333?u=3DMWNlMTQwZWE4NjkxMDc4MmE4MzIzMmI2NmFiNzEyN2Y5NWQzMzQ2YzN=
jMzY1ZjcwZmZkNjFhZGM3YTBhYmRjYjMwZWY3Y2IxNDBhMzM0MjdjYTU2ZDJjNWNlZTQ0NGY2NW=
JiMzgzM2EwYTFlZTAxYWM5YTAwN2U1M2QzYzU3ZTdhMTE0MTA0NjBmMTA2MjliODgwZjc1MWJjZ=
jdiNGI0NTRjNjNmNGFkYTE2ZjY0ZTUxZGRlOWNhOTFjMzZlMDgyNjliNWZhZTY1MWUwODE3MzRj=
MGZiNDg0ZjM3MWY2Y2Y2ZjhhOWNjZjVkYWJkOGZmMjUxYmMxZTFkM2ZlY2U2N2Q2OWY2NmRlNTB=
kYzAyOTU0ZjIyNjk3MjllM2I1NTY4ZTMwMmRmMGZmMzRmY2MzOGQzNTU2Yjc1ZTA3NGFhZGJhNj=
liOWMyNWY2NTAyMDdiZjFjZDA0NzY0M2E4Mjk5YjNmYjZmOTNhMjg0MzQ5ZTAxNDcxNWM1NDNhM=
TczYQ=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DNzQyZDM3MmFmNWYxMjU2NzM1ZDY1MmNkNDVmOWQxZGE5ZTAxZWVlMzN=
hYjIzMTNlZDQzMjk2YjI0NzBlZmFiM2RhNWZlZDljNmJmNWQ3YmE0Y2MxMmRiNWQyNWE3MzEyOW=
I5NzQ1NDZhMDc0MDRkZGY4ODllOTUwNjkwNmQ4MWNhYzM4OWU3ZjgyZmIwZDQyYmFhOGI3NDc3N=
GU0YmY0ZTFlYmI2ZDJhNjk5NDdkYjI5NzVhM2ZlYWFjOTM0YWU5OWNmZGYyZTU2ZTQwZDE3NGQ1=
NjU4Y2Q3MzlmMGM1YzBjNTBhNTMwOTQ5ZDZhNTNkYmRlZWFiYjY4NGE0ZGE=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DZTNmY2IxZmNkMWYwNjE4MWZhYzQxOTQ3OGFkMTMwMzQ5YzdhZWUwNGZ=
kMzg5NmVjYTc4YzkxZWVmM2RmMzFjNzJiNzEzMTU1MmQ2MzUyYzgzNDEzMmVhM2YxMzVlYWJmND=
IxODIyMDhhMzBhMGUxOGZhNjBhMjZkZmI1YjFlYzY4ZWM4NWYxMmE5YmEwNWEzODRjY2MxMzJmY=
WM0ZmQ5MzVhN2UxMjVlNmUwZTlhZjIzZTVmNjBjZjdhOWIyODVlZDAxNDNiOTk0N2U0MzFkZjUx=
OGE2MzQzYjk5NzYxOWNlNjNmYWI5M2E0MDI5MzMxMGJjZjY0YzcxMGI0ZWVhNGE2ZGFhYjdiNjh=
mMGUyNTNlYmQyZWU5ZTAwNDU2YzgzYjg2M2JlNTk0ZTEyNGNiNDZlMjRhNDgzMTdmMzdiZjRhNG=
MyMjVmN2JlOWE2NzZjYzExMzJhM2U2NWVlMmVhMGRhZWFiNWJhZGNlMzZmOTkzZjFiNzA5NzhiM=
DJhYjgxYWJjYjc3NWQxMDFkMDdmOWYzMGViYmJlMDYxODlhZGZjYjFhYjBkOTRmNTQ1NzEyZTZm=
ZjM2OTE=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DODI5NGZjZjcyZjY1NjMw=
ODdkYzFkNzI0ZmRmMzVkZWJlNzVkMDQ3YjUwNjRjNGVkZTRkNWVjM2QwZGNhNmI4MzgzZDhhZGJ=
hYWY3YTM4YzNjZDE5NDA5M2RjMjdhNzkxNDhiZDgwMGE4MjcyOGU4NmZjNDVmNzc3YjEzNmExZG=
Q5Njk4MGVhZGYzNTE4MzJmZjYyOTc2NjY4MWU2YWIxMGRlMzdmMWMzNjdjNjY3ODJiMWJiNzAxZ=
TlkNGQ4N2NkMzhiZDIxOWMxMTMzZmRhMmZjYTg1ZjdkNjliOTkxOGRmYmI3MjFmYzlkYTY0ZDhh=
YTQ5M2JkY2VjNDIxZWIyYmQxNTkwYjNhZDk5YjM0OThiNDMzMzE2ODIxNTNiYmQ0MzhiODJjNzk=
1YzE2YWE5ZDcwMzRmZDY2MmJiMTI2MzhjZjZkOGRiYzIwZDNiZWI4MDQ4ODNkNTUwMDE0YzBiY2=
QwYWY3NjVjYjIzNTMwNjNkYjEwNjFhMWUy" target=3D"_blank">
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
?u=3DNmVmZGNmOGIwNTBkYmQ1ZDI5ZGViMGUxOGEzYWMxOGQ2Mzc5MmJhMWRmYThkODkwYzA4OD=
E2ZjIxN2JhMDNmNWJkMGMyMzY0MThmZTM1MzVhYTM3YzE3YTI5NGMyOTJhMDU2YTU3NGEwMWFmY=
jFjNjUzNjY3NDgwZTRlNjk2MWUzNGRjOTgyYWQ5MzMzODBhZGExZDI3YTRmODhjMjgxODdlYTll=
MjY3MWRlZmQ0ZmU0ZmNlYjM3YTIyZTY1Mzk3YzE3ODMyYjc0NTU3NjgyMjI4OTg1OTgwYzAxMWV=
kYjQ1OTdkMmVjZWU4OGEyZmJlYmJmNDc2OGIwZWRhZmUwOWIxZDZjNDdmMDdhMzZhY2UyZDZlNG=
VhZGE1OTgyN2I1N2RlN2IxMzRiN2Y1ZTcxM2E4MWZlZDNmYzFhMWFiZmIxZDgzNDM3ZWI0YWE2M=
zU2ZWE4NTg1MjJhYjIzNzNlZjRiNDI5YmE4YjBlYjVhYjM3YTRiYWU0OWVm" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DMjU5MzNmZ=
TUxYTZkMTY3NDlkNWMyYzJmN2YwMTM0ZDRlMGE1OWY3OTlhYjJhMTViM2JiOWJkOWIzYmYzNjI4=
ZGI0YzlmY2I0MWIzMzhiMjAzMmQ1MDlkNDgxMmZmNjdlNGJiZmE0YTUwZjhiZDcxNDExNTEyMGV=
jNGQwMDlkZmZkODQxZDZhMTM1MzQ2MWI0ZGQwMDY3YTMwMGY3MjY2ODdlYzg5MmEzNGU2N2Q3OT=
lkNzI0MzZiZjBhYmU1YTkwZjcxYTY4YWUxMjliMGU2YmJhZTExNDMzOTE5YWZiOGMyNTRlOGZhN=
2I1YzM3YmViZThjYTVhNDNiYWFiODdlODIzMzQzYjE4OTI3NzQyMjk4NjllZjNmMTBjNjQ2ZGZj=
ODU4NjgwY2ZjMTM1NGY0ZjU2NmI1MzNlYjYxNmJlMjU3MGZkZDczNDkwODAxNTUxOGJhN2RkOTM=
4YzU0NmRjMTJjNzE0ZjQyMDBjZmMyYmQzOTc1MTYwZmJj" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DOTFkZTl=
jNTMzMzE2ZDNmNmNkNDIzYWY3MWRkMTdlNDM1ZTE3Njc0NDgxZDczMmJmZGEyNmQ2OThkYTZkMW=
U0Njk5NWNmZWI1MjMzYWQ0ZTM1YzQ4YzkyMmUzMmQ2YzJjNzRkYmU5YzZkMmZjY2ZhMjU1MDA3O=
DMyZTVmYWFiM2FkMGVmNGExYjk3YTRlMGRhYzM3ODNhYzM5NThmYWFkNzg2NjczNzcxYzBlMzNl=
Yzc0OGE3ZTYwMDEwNWVjZDFlOWJkNjQ5NWQzN2E2MjQ1Yzg2M2QxZDc0ODBlMjMzYTg1MWRlZWU=
wM2Y2YTZjMTU5MjYzNmQ5OTY0ZDc5ZGNhNjhhYjNhNDZiMTVjMDA1MGUxMDM4ZWRhNzE3MDk3MG=
RjOGYwMjM0ZGVkYzg0MmI4MTNhYmUxOTJlZmJjYTc4Mzg1Yjk4ZTc4YjY3MTlkOWYxZjUwZjY3N=
mZhNTU3YmM5MmZiNzBmODczZTU4OWYwYzY4NmY1MjEyYWM0" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DOTMzMDY1ZjMy=
MTU1ZGYxNTAzNjRiYjY5ZWJiYTA1ODVmYmRmMzkyZTdmYTc1NGQ5NTI1YzE4MDllMjdkZDdlZWR=
hZWJkYzJlZTQ1NDI4ZGVmNzE5NjJhZjdlZmFmNWQyOGIxM2I5NjkwODRhNGEyODdmMzlmZGY2ZT=
hiNTExOThjNjVlNGVjMzE3NjliZjZhNDE1YzE1NDg5OWI2YjUyN2NhZDA3ZmYzNjRmMDNhNDY2N=
jBlYzg1YzhmM2U3ZDVhNjIxYTI2ZTc5OTE2YWEzMTM0M2RiZTc3ODhjNjJjMjFiZGI2NzVhMWQ4=
ZTFjMjc5MDU5MzYwMjdhYjhjODBlNGUzMTIzZmI4ZWM0NzU3YmMxMGU3ZTljYjQwYTdhMGJhOGQ=
0MzQ0OGU1OTMyZmU0ZTk0ZTA1ZTVmZDU4YmYyODA3ZDE2Y2Y0ZWM0NzJkYWQwMTM5NjU3ZTJmMD=
BhMjNlZGYzYTMzMjMyNzNkMTgzYzM0MDMzNjE1OGFl" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMTM1YzkxMzg3YjI3Y=
TA2Mzk2ZDUwMmI1ZTlkNzEzYzcyZDMzMzFjODY2YzY0YjJkZmQzZGEzZjQ0N2M5YWRkY2Q0MWVl=
MmMzZWVmOTE1MWVlZjUxMDJmMTA0NjAyY2E4NjM0MzY0MmU3MDU3YzM2ZWRlZDBkMGE5ZTQ4ZDB=
hOWVkNGI2NTU4MzVlY2U5MmJmZTY2ZGQxMjRmN2ZkMDE5NzIxYTlhOWQxYjRkODQ1NWI5ODk4OW=
JkM2U2MGY4ZTMwNmQ0NjY3NDBhMzYxZDQ4MjFjODFmMjM4MjM4NTcyODc5YmM1ZTY1OGM2MzU0Z=
GNhYjA4ZDZhOTNjNTA0NzgxOTNhMTgzNGY2ZDQzMWEwOTM3NjJiOTUzYmNkODAwNjZhNWM4NDgy=
MDcwMDExZTU3YzNlNmU0NjcxOTQ1MzcwZGQ5OGFiNTMyMjRiMDU3ZTljY2U0N2Y1NDdjMWZmOTR=
jYmUyOTI0NDZmZDE2NGMyZTNkMWVhOTFkZTIz" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DZTg4NDBkMTA0N=
2I3OTk4ODRjZDIxMjAwNmZhMDMxNGVjYmQyODJlZDg2Y2EwZTY2ZWE2MzZiZTliMTEzNThiZjFj=
NmU5ZWIxYjNjYzAwNDZiYzU4YWFjZWE3NTFjNzI5OWIxYTk1Y2M5NGNhYWJkMDQzNzg2M2EyMGE=
2ZGEwZDczMjljZTFmMDcwMjMwOTNmMDE3NTU2NWM1Mjg0MDQxYjE2YzYwNmM3NTVmMWVkNjEyYm=
M3YTAzNGQyNTQ1OTEwM2Q1M2FiNGM4YTNjMGUxOTFmNjU2NDA2OTAyMTZiZTYzNTY0NTJmZTNjO=
TAxM2MwZDNmMjNjYTUwOGFmMmFjOWNjZDQ4ZmFhYjU4NDRmNDBjN2EwYzhkZmU4OWU5YWUzYWQ4=
NDYwMWRkNzg1ZGI3YTkwN2NiYzYxOWFkM2EwZmI4ZjgyZDNkNmJiMzg5YTM0YTYzNzU0ZTdhZDA=
zNjkxN2NiOTcyYmY1YjJiN2FmOGUzZjE3M2Y5ZDMx" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DZTkzYTY=
yZWRlYTY2Yjk5YjNjNzc5Yjc2M2UwZjIxZDZkZTc1OTY5Y2QwMzI0ZWYzYWMzMDY3MWFiMTBiMD=
EwYWI5ZDk3YmRlNDRjNzUwZTgyMWM3MmQ3YjRjYTZhMjE0ZmY2YWNiMDYyMzg4NDFlZDY5YjQ1O=
TYwZWJjMjk0M2VlYmExMWE0ZGNkZjM4YTE2NzQyY2NkN2JhNDc0NGU2NzQ2NGI4NWEyNjMzMmJi=
ZmE5NTYxMGVhY2VkMTgyZWExZWFlZWIzNDYwMDExYTYxNzg1M2VlYjMxYmM1M2E2YWZhNTMwZDg=
4NDY5YTU5NDI5OTA5YWFiMjNmYmJhNDc3OGFmN2M5YjgzMWY0MDQxNDY4ZjZjOWU1NzU4MGVjZj=
U2N2YxM2I4ZWI1MjU1MGEwYjNiODgyYzhhMDdmM2YwYmIxOTc4MGE4MjVjYjQ0ZjVhMDVhMzY3N=
zdjMmNiNTY5OGRlNmY5OWM1ZGUyOWU5YjhiYjVlMTZjYzljOWVjNw=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMThjNTFiODkwOTdkZDZmNzI2NzExZD=
gwYTZkNDM0ZTFkMDhhMjc3NTNkNmZiZTNjZThjYjdmZjA4OGZiMTNkMzA0NzM4MWU3ODQ3ZTlkM=
2Q0ZmU1ZWVkNDVmNmEyNmNkN2EzMThjOGE1MTVmODhlYmY5NzFkZDJjNGZiZjg3NGVkZDZkM2Jm=
MzQ2MTVmNjQ5M2Y0M2Q5OTM2YmJkYzc4YjU1MjY5ZjVhN2IyMWNjMWY5NTE2ODk1ODg4OThkNjU=
yYjljZTk0NGUzNmY3ZmFlZWNhZGYwMmM4MGMxZGZjZDM0YjRkYTE4YTQ0MDBkODg3Nzk5MGNjYj=
AzYTZkZDM5YmUwOTMyOWI2Yzc3NGUxMzUyNmQzN2VkNzNkNzU2ZjEwMmY4MzU1NGZkZmIwZGJmO=
DMxN2U3N2NkMzFkODIxY2ZiMjYxMTViYWI5ZTM5NTllMzg1YzAwNzI3NTc5NDkyNmVkOTkyNTI0=
M2E1ODMxYWIzZmVlZjU4OWUz" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DZTQ2ZDMxZThhOTUzYzZkMWQxYTU5MT=
hiNWQ2ZjdkMTYwOGRkMTkzNGE4OTk1MzIzYzAzNDU3NzA4MDdkMGI5MTlhNjRjMTlhY2FiNTYyY=
jhlMzE4MGVjOTAyNmE2NTg4ZTMwNWQ3MDdlMzdjNWMwN2UwM2EzNDdiYWZhNjlhNWYyZjEyNTc2=
MGVjOWVhYzA5YjIyNDg5ZDE3ODhhZjU5NTQzMmMxOGUyODQxNWIwN2Y4MDJhYjk5ZTRmZDA5MzF=
hZDZmMTdmZTk2NjFjZDg3MTg1NWNlMTE2Nzg5YTg5MDVlZDdjYjA3YzIyOTZmNjVhZjhhOGM4Zm=
Q5OWJmZDJkYjI3YzYwMTJiYjViNTdlZTY0MzgwYjNmY2NiYmIzYzc2N2U4MWJhNTI2NDdkZTQwY=
zY0NWY1NmNjMzcxOGUwOTBiNmU3MThiZGVmNThmOGY5OTAxMDBiOTExZjA0Y2FhM2MzZjA5OWNl=
ZWFhNzNiNGFlNmIwNjhlZDg5" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNmY2MWQ2NDVjZTQ4=
NGEzYWIzZGRiMThhYTcxZWIwYTZhNjcwZWI4MWE4NWM0NDQ2ZDNlNjNiZGZkOGFkZTQ3MjFhNDA=
4M2MxYzUyZWM0MWFmMjMzNTU4OTVhNDQyY2QxYjc1N2Y0N2VkNmUxMWIxNzUzMTJhOGIyYWJhMm=
IyYjZhZDE4MmE3NGU0NTliZGNkNTg2ODIwNTgwY2QwODU3MzgwZWM3NjAwYmUxODM4M2U4MjQ1Y=
zEzOGE2NmMyMzhkYzQyMmJkNDQwYjZhZmJmZDFiY2JjMGFmMmM1ODcyOGFiMjNkNTExZmFmMWM5=
ZGEwMjY0MzRlYzZlZDM3NGY2Njg2NjVkOTFlYTRkYmFmNjU4NGE2M2Y0OTY3ZGRhOWM5NWM3YzE=
xNGQ3NTkzODVmYzI1ODBmMTFlOTJjNDc5YzJhMDBjOTcxMDBiMThkN2IyNGFhMWZlOWFmODM5Ym=
Q0ZDM3Zjk2NDNmMzNiMmM1NTc5YWM1NzdhNTAzODcyZA=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZGI4MWU5NjkzNjU5=
NzBkOGM2MGQ3YjE0ZWIwNmFiOTMyMDhkZWQzYjBmZjBlMTg2MDE3NjkzNzhmMTRkM2JlOGVjZGE=
wOWFhMzZhMTM3MjljMzE3ZjM3NWU2NjNmOTZhYzZlNTgzZjZjZjRiMWI1NTJkY2RjYzYxM2UxYW=
JlYTIzNzIxMmQyYWFhNzVlMTZjYmFhOWUxNmFiNGExYzY5NDFlMjk0ODZmNTgyOGRhZmYzYmY0Z=
GFhMTQyOWFkZmY2YTNlODcxNDY0N2IyMDMxZjE5ZTk2MGMwMjUwYzdmNGEwZTI1MDk3NjVjZmZh=
YmQxMGIwMGEwMmZmYWIxYzA4MGU4M2E3NDE0ZWViOTlmZDIxZDY1NTQ1ZTFiNzM2YzdjMWQ4ZTE=
1YzYxZTU1Y2ZhOTM3YjA3YTljZjZlY2QxOWYzNWIzNjU2YWZiNzU3OTk5ZDZlZjgzYjI1NmMxZD=
ZiM2ZmMWM4MWQ5ODI4NThiN2U1YTgzZDY0ZWVjN2M2Yg=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYzdmNTJjYWZiOWJl=
MDBkY2I0MDA5YjMyZjA1NDlmNzA3Y2Y5YmM4NzU1ZjVhZWFmNzM2MzEwODgwYTM5NjcyMjc3N2V=
kN2M1MjlmNTVkNjA1YzhkMjk3MDA2ZjRiZGM4YjMwODQyZmZiZjg4ZjM0MGQwNjJiOTljMjJkYz=
AyNGNiM2MyMmEyYzVmYWEwYTYyYjNkZGIyZWFmZGZiYzJkYjI0N2NjOWI3OWI1MzJkYzhkMGZhM=
WM3YmEwZWRhMGJhZjdhMjg2ZjY1OGZjMmVjYmJlODIyMDk4YmZlYWIyODUzZjE5Yjc2NDk4N2Ez=
ZDc4NTUwN2QyYTAxNDkwNTBiYjk1ZjZlYzRmMThlZmYxOThmY2ExNGQxZGZiNDc1YjJlMGMwYmQ=
0ZDliNzczNDFkNmFhMDJkY2JiMjRkZjdlOTcxODBmM2Q5MGU2MzIwNmE1ZjU2OWNmMWY3YmIwMj=
ZiNmEyMGMwZGU1N2IzNjUyNzI5YzI3YTE5MzkzYWM3MQ=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMjBlZDAxNWMwMDYx=
OTE1NTFiMmZiNTA2ZTVhZDYxNTFjNWY2YzllNzQ4NzI5YWQ4YzZkYzFiZmM0MjI2ZGI3NmU3MTV=
mMTE5ZjMzNWEwMTc4YzVmOGFiZGM4NzJlZmE3MzU0MGI0ZWVhNWU0NDEyYzM1NTY3YzAyM2VjNj=
Q2YzA0ZWEyOTliZmJhNWNlODZlMTMxNmY4ZjMwNTU3MGJjOTVlMTM2ZWQwMGQ1YmUwY2I0Mzg0M=
TJkZDYzNWE2NzgxMDkyYzJkYzM1N2I2YmM1MTEwNDVkNjAyN2NhZWNjMDIxMmI5YjQxYzE4NDFm=
ZmZjZTk1YWEyMWQ2MmNjNDUyMmJiMTU5MzNkOThhZjBhYjZkZjVkNDZlN2Y4N2Y3ZTc2ZTQyYjd=
kOTk4NWZjMDM4OWIwMDNmODM1NzE5M2U0NmIwNDFiM2EzN2IxNGNjNGIzNjFmODhjMDZlMDMyMG=
FlMWExMmJiOTQ4YWJkM2YxNzBiOGVlN2MxZGRhNTlmOA=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYWMyNTc2NTRmMmVhND=
UyZWQxNzY2NjlhN2IwNTU0NzYwOGUwNmNmMmI4ODdmYzE1NGFlMWU4NWMyOWU1MjU5ZWJjYTNlO=
WJhNDFiNzcwNzg0ODI5MDIxNmIyY2JlODU5NWNmMWRmMzNjMmI4OWQ0MTcwNzJlNjIyYjBmOGMy=
ZDg4NzAxNTEzNzIyNGQ5YjEwZTgwZTI5MjA3MTY0ZWM4NzViM2ZjZjExMjUwOGU3OTBmNDExOGI=
0Njk1MTI4NzdiMDlhMjU1OTZkZDNhOTQyZmUxMzRlYzhiMjg5MGZhYmJjMGRlM2I3NGUxMTBiND=
A5YzliZWY4ZjY4Mjc1NTAxMjY4ZTEyYzRkZTgyYmU0MmVmNjBiYWY4NjQ0MDgwZTBhZTkzZTNiY=
mU0ZWU4MDgzZmI2NjViNjg4MTcxMGM1YjNlMTgyMjkxZTk5OTI3ZGJlZjJlMTc5NjMzMTVlN2Y2=
ZmU0ZjBjN2ExNGE5ZTRkY2FkNDY4MzFlNWM2YjEwYw=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DMjA4ZWRiMzQ5ZWJl=
MmNiNTlhNTIwNTU1ZDg5MzU3MDU4MmIxNDY0NzQ4NzY5ODU3MmMwZmFhMTM4ODA3NDVjZTE3NTM=
2MzUyN2JjODMyZjE4YmFjYjExOTNlN2VmZGYzY2RlMjJhYmM0NDJjNWRlMjdlYjgxZDk3YzE1OG=
I0OTYxNWIyMWFlNjQyNTAyNTMwMjM4Mjg0YmI5ODVkNzEwNTVmODZhNWY2NWQwMWRjODAyNDZjY=
mI4Mzc5ODJkN2E5MTU1ZjY0N2M4MTFhNDViZDJkNjkwMzI1YWJjMzQ3ZmJkMWM0NzcwOWY2ZWY5=
MzYzYmY4OGQxYmZlODE5NzM=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DYzE5ZWNlOWJhNWIwOWQwYjZiZDJjNmU2MTU0N=
zI3NDkzMzc1NzQ5NmZmYjNiMGViNThlYTliMGJmOGYzMzU1MDkxNmEwM2E0ZjI4YjNkNTI2YTMy=
OGRjNjkyNjA5M2U4OGI4M2E3ZDczYjUzNGUzZTg4YjkxNmU5MzkzZmY3ODNmYWE1MTRlZjRiNTA=
3ZGYxZjgyZmNkMGUxYmQ0NWYxYzExOWNmN2IxZjEzMzljYjhkYmJmNTJiYTdjYzI2NmI1NmJiNW=
VkMzA4Yjc0YjkzMDE0ZDAyZDQ4ZmEyMzUzMmYwMWU5ZDJkZmE0NmE1MTJjODZkNWQ3MjcwMmRkN=
2VlNDY5NjEwNzY4ZDZiZTk1Y2JjMDFiOGQ0MTFjZTYwMDJlYjMwMWQzMzI1YjkwZjgzZWY3Zjg1=
MTFmMWMzMTg2Y2JlNGIyODI1ZWVjZjVkOGE4MmMxMGJmZjgzYWVkNjQ4YWM4OTc3Y2Y3ZjRiMWR=
jYTU0NzgzODZiYmY1YTMzNGI4MmMwMDQwNjE1NTQwYTA5NTA5YjhiYjhjMDZhODY5MjZkMDhjOT=
U1ZTE3OGJjMjIyNDlmNWI4Nzk=3D" style=3D"font-size:12px;line-height:134%;font=
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
