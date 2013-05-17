.class public Lcom/android/providers/contacts/t9/T9Kdg;
.super Ljava/lang/Object;
.source "T9Kdg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KDGT9"

.field private static final sPinyinT9Map:[C

.field private static final sZhuyin2T9Map:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/providers/contacts/t9/T9Kdg;->sPinyinT9Map:[C

    const/16 v0, 0x25

    new-array v0, v0, [C

    fill-array-data v0, :array_32

    sput-object v0, Lcom/android/providers/contacts/t9/T9Kdg;->sZhuyin2T9Map:[C

    return-void

    nop

    :array_14
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_32
    .array-data 2
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatCharToT9(C)C
    .registers 14
    .param p0, "paramChar"    # C

    const/4 v12, 0x0

    const/16 v11, 0x396

    const/4 v10, 0x0

    const/4 v5, 0x0

    :try_start_5
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v6, "get"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.repo.build"

    aput-object v8, v6, v7

    invoke-virtual {v2, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_5d8

    :goto_29
    const/4 v3, 0x0

    const-string v6, "kdgdev"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_42

    const-string v6, "burgerz"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_42

    const-string v6, "czjomi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5d2

    :cond_42
    const/16 v6, 0x41

    if-lt p0, v6, :cond_6a

    const/16 v6, 0x5a

    if-gt p0, v6, :cond_6a

    sget-object v6, Lcom/android/providers/contacts/t9/T9Kdg;->sPinyinT9Map:[C

    add-int/lit8 v7, p0, -0x41

    aget-char v3, v6, v7

    const-string v6, "KDGT9"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    :goto_69
    return v4

    :cond_6a
    const/16 v6, 0x61

    if-lt p0, v6, :cond_92

    const/16 v6, 0x7a

    if-gt p0, v6, :cond_92

    sget-object v6, Lcom/android/providers/contacts/t9/T9Kdg;->sPinyinT9Map:[C

    add-int/lit8 v7, p0, -0x61

    aget-char v3, v6, v7

    :cond_78
    :goto_78
    const-string v6, "KDGT9"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    goto :goto_69

    :cond_92
    const/16 v6, 0x3105

    if-lt p0, v6, :cond_a1

    const/16 v6, 0x3129

    if-gt p0, v6, :cond_a1

    sget-object v6, Lcom/android/providers/contacts/t9/T9Kdg;->sZhuyin2T9Map:[C

    add-int/lit16 v7, p0, -0x3105

    aget-char v3, v6, v7

    goto :goto_78

    :cond_a1
    const/16 v6, 0xc0

    if-lt p0, v6, :cond_ac

    const/16 v6, 0xc7

    if-gt p0, v6, :cond_ac

    const/16 v3, 0x32

    goto :goto_78

    :cond_ac
    const/16 v6, 0xe0

    if-lt p0, v6, :cond_b7

    const/16 v6, 0xe7

    if-gt p0, v6, :cond_b7

    const/16 v3, 0x32

    goto :goto_78

    :cond_b7
    const/16 v6, 0x100

    if-lt p0, v6, :cond_c2

    const/16 v6, 0x10d

    if-gt p0, v6, :cond_c2

    const/16 v3, 0x32

    goto :goto_78

    :cond_c2
    const/16 v6, 0x180

    if-lt p0, v6, :cond_cd

    const/16 v6, 0x188

    if-gt p0, v6, :cond_cd

    const/16 v3, 0x32

    goto :goto_78

    :cond_cd
    const/16 v6, 0x1cd

    if-lt p0, v6, :cond_d8

    const/16 v6, 0x1ce

    if-gt p0, v6, :cond_d8

    const/16 v3, 0x32

    goto :goto_78

    :cond_d8
    const/16 v6, 0x386

    if-ne p0, v6, :cond_df

    const/16 v3, 0x32

    goto :goto_78

    :cond_df
    const/16 v6, 0x391

    if-lt p0, v6, :cond_ea

    const/16 v6, 0x393

    if-gt p0, v6, :cond_ea

    const/16 v3, 0x32

    goto :goto_78

    :cond_ea
    const/16 v6, 0x3ac

    if-ne p0, v6, :cond_f1

    const/16 v3, 0x32

    goto :goto_78

    :cond_f1
    const/16 v6, 0x3b1

    if-lt p0, v6, :cond_fd

    const/16 v6, 0x3b3

    if-gt p0, v6, :cond_fd

    const/16 v3, 0x32

    goto/16 :goto_78

    :cond_fd
    const/16 v6, 0x410

    if-lt p0, v6, :cond_109

    const/16 v6, 0x413

    if-gt p0, v6, :cond_109

    const/16 v3, 0x32

    goto/16 :goto_78

    :cond_109
    const/16 v6, 0x430

    if-lt p0, v6, :cond_115

    const/16 v6, 0x433

    if-gt p0, v6, :cond_115

    const/16 v3, 0x32

    goto/16 :goto_78

    :cond_115
    const/16 v6, 0x490

    if-lt p0, v6, :cond_121

    const/16 v6, 0x491

    if-gt p0, v6, :cond_121

    const/16 v3, 0x32

    goto/16 :goto_78

    :cond_121
    const/16 v6, 0x1ea0

    if-lt p0, v6, :cond_12d

    const/16 v6, 0x1eb7

    if-gt p0, v6, :cond_12d

    const/16 v3, 0x32

    goto/16 :goto_78

    :cond_12d
    const/16 v6, 0xc3e

    if-ne p0, v6, :cond_135

    const/16 v3, 0x32

    goto/16 :goto_78

    :cond_135
    const/16 v6, 0x628

    if-lt p0, v6, :cond_141

    const/16 v6, 0x62b

    if-gt p0, v6, :cond_141

    const/16 v3, 0x32

    goto/16 :goto_78

    :cond_141
    const/16 v6, 0x67e

    if-ne p0, v6, :cond_149

    const/16 v3, 0x32

    goto/16 :goto_78

    :cond_149
    const/16 v6, 0x5d3

    if-lt p0, v6, :cond_155

    const/16 v6, 0x5d5

    if-gt p0, v6, :cond_155

    const/16 v3, 0x32

    goto/16 :goto_78

    :cond_155
    const/16 v6, 0xc8

    if-lt p0, v6, :cond_161

    const/16 v6, 0xcb

    if-gt p0, v6, :cond_161

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_161
    const/16 v6, 0xe8

    if-lt p0, v6, :cond_16d

    const/16 v6, 0xeb

    if-gt p0, v6, :cond_16d

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_16d
    const/16 v6, 0x10e

    if-lt p0, v6, :cond_179

    const/16 v6, 0x11b

    if-gt p0, v6, :cond_179

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_179
    const/16 v6, 0x189

    if-lt p0, v6, :cond_185

    const/16 v6, 0x192

    if-gt p0, v6, :cond_185

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_185
    const/16 v6, 0x394

    if-lt p0, v6, :cond_18f

    if-gt p0, v11, :cond_18f

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_18f
    const/16 v6, 0x3ad

    if-lt p0, v6, :cond_19b

    const/16 v6, 0x33

    if-gt p0, v6, :cond_19b

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_19b
    const/16 v6, 0x3b4

    if-lt p0, v6, :cond_1a7

    const/16 v6, 0x3b6

    if-gt p0, v6, :cond_1a7

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_1a7
    const/16 v6, 0x401

    if-lt p0, v6, :cond_1b3

    const/16 v6, 0x402

    if-gt p0, v6, :cond_1b3

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_1b3
    const/16 v6, 0x451

    if-lt p0, v6, :cond_1bf

    const/16 v6, 0x452

    if-gt p0, v6, :cond_1bf

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_1bf
    const/16 v6, 0x404

    if-ne p0, v6, :cond_1cb

    const/16 v6, 0x454

    if-eq p0, v6, :cond_1cb

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_1cb
    const/16 v6, 0x414

    if-lt p0, v6, :cond_1d7

    const/16 v6, 0x417

    if-gt p0, v6, :cond_1d7

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_1d7
    const/16 v6, 0x434

    if-lt p0, v6, :cond_1e3

    const/16 v6, 0x437

    if-gt p0, v6, :cond_1e3

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_1e3
    const/16 v6, 0x1eb8

    if-lt p0, v6, :cond_1ef

    const/16 v6, 0x1ec7

    if-gt p0, v6, :cond_1ef

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_1ef
    const/16 v6, 0x3137

    if-ne p0, v6, :cond_1fb

    const/16 v6, 0x314c

    if-eq p0, v6, :cond_1fb

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_1fb
    const/16 v6, 0x627

    if-ne p0, v6, :cond_203

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_203
    const/16 v6, 0x621

    if-lt p0, v6, :cond_20f

    const/16 v6, 0x623

    if-gt p0, v6, :cond_20f

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_20f
    const/16 v6, 0x625

    if-ne p0, v6, :cond_21b

    const/16 v6, 0x649

    if-eq p0, v6, :cond_21b

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_21b
    const/16 v6, 0x5d0

    if-lt p0, v6, :cond_227

    const/16 v6, 0x5d2

    if-gt p0, v6, :cond_227

    const/16 v3, 0x33

    goto/16 :goto_78

    :cond_227
    const/16 v6, 0xcc

    if-lt p0, v6, :cond_233

    const/16 v6, 0xcf

    if-gt p0, v6, :cond_233

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_233
    const/16 v6, 0xec

    if-lt p0, v6, :cond_23f

    const/16 v6, 0xef

    if-gt p0, v6, :cond_23f

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_23f
    const/16 v6, 0x11c

    if-lt p0, v6, :cond_24b

    const/16 v6, 0x133

    if-gt p0, v6, :cond_24b

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_24b
    const/16 v6, 0x193

    if-lt p0, v6, :cond_257

    const/16 v6, 0x197

    if-gt p0, v6, :cond_257

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_257
    const/16 v6, 0x1cf

    if-lt p0, v6, :cond_263

    const/16 v6, 0x1d0

    if-gt p0, v6, :cond_263

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_263
    if-lt p0, v11, :cond_26d

    const/16 v6, 0x399

    if-gt p0, v6, :cond_26d

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_26d
    const/16 v6, 0x3aa

    if-ne p0, v6, :cond_279

    const/16 v6, 0x3ca

    if-eq p0, v6, :cond_279

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_279
    const/16 v6, 0x3ae

    if-lt p0, v6, :cond_285

    const/16 v6, 0x3af

    if-gt p0, v6, :cond_285

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_285
    const/16 v6, 0x3b7

    if-lt p0, v6, :cond_291

    const/16 v6, 0x3b9

    if-gt p0, v6, :cond_291

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_291
    const/16 v6, 0x406

    if-lt p0, v6, :cond_29d

    const/16 v6, 0x408

    if-gt p0, v6, :cond_29d

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_29d
    const/16 v6, 0x418

    if-lt p0, v6, :cond_2a9

    const/16 v6, 0x41b

    if-gt p0, v6, :cond_2a9

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_2a9
    const/16 v6, 0x438

    if-lt p0, v6, :cond_2b5

    const/16 v6, 0x43b

    if-gt p0, v6, :cond_2b5

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_2b5
    const/16 v6, 0x456

    if-lt p0, v6, :cond_2c1

    const/16 v6, 0x458

    if-gt p0, v6, :cond_2c1

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_2c1
    const/16 v6, 0x1ec8

    if-lt p0, v6, :cond_2cd

    const/16 v6, 0x1ecb

    if-gt p0, v6, :cond_2cd

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_2cd
    const/16 v6, 0x3139

    if-ne p0, v6, :cond_2d5

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_2d5
    const/16 v6, 0x633

    if-lt p0, v6, :cond_2e1

    const/16 v6, 0x636

    if-gt p0, v6, :cond_2e1

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_2e1
    const/16 v6, 0x5dd

    if-lt p0, v6, :cond_2ed

    const/16 v6, 0x5e0

    if-gt p0, v6, :cond_2ed

    const/16 v3, 0x34

    goto/16 :goto_78

    :cond_2ed
    const/16 v6, 0x134

    if-lt p0, v6, :cond_2f9

    const/16 v6, 0x142

    if-gt p0, v6, :cond_2f9

    const/16 v3, 0x35

    goto/16 :goto_78

    :cond_2f9
    const/16 v6, 0x198

    if-lt p0, v6, :cond_305

    const/16 v6, 0x19b

    if-gt p0, v6, :cond_305

    const/16 v3, 0x35

    goto/16 :goto_78

    :cond_305
    const/16 v6, 0x39a

    if-lt p0, v6, :cond_311

    const/16 v6, 0x39c

    if-gt p0, v6, :cond_311

    const/16 v3, 0x35

    goto/16 :goto_78

    :cond_311
    const/16 v6, 0x3ba

    if-lt p0, v6, :cond_31d

    const/16 v6, 0x3bc

    if-gt p0, v6, :cond_31d

    const/16 v3, 0x35

    goto/16 :goto_78

    :cond_31d
    const/16 v6, 0x41c

    if-lt p0, v6, :cond_329

    const/16 v6, 0x41f

    if-gt p0, v6, :cond_329

    const/16 v3, 0x35

    goto/16 :goto_78

    :cond_329
    const/16 v6, 0x43c

    if-lt p0, v6, :cond_335

    const/16 v6, 0x43f

    if-gt p0, v6, :cond_335

    const/16 v3, 0x35

    goto/16 :goto_78

    :cond_335
    const/16 v6, 0x3141

    if-ne p0, v6, :cond_33d

    const/16 v3, 0x35

    goto/16 :goto_78

    :cond_33d
    const/16 v6, 0x62f

    if-lt p0, v6, :cond_349

    const/16 v6, 0x632

    if-gt p0, v6, :cond_349

    const/16 v3, 0x35

    goto/16 :goto_78

    :cond_349
    const/16 v6, 0x698

    if-ne p0, v6, :cond_351

    const/16 v3, 0x35

    goto/16 :goto_78

    :cond_351
    const/16 v6, 0x5d9

    if-lt p0, v6, :cond_35d

    const/16 v6, 0x5dc

    if-gt p0, v6, :cond_35d

    const/16 v3, 0x35

    goto/16 :goto_78

    :cond_35d
    const/16 v6, 0xd1

    if-lt p0, v6, :cond_369

    const/16 v6, 0xd8

    if-gt p0, v6, :cond_369

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_369
    const/16 v6, 0xf1

    if-lt p0, v6, :cond_375

    const/16 v6, 0xf8

    if-gt p0, v6, :cond_375

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_375
    const/16 v6, 0x143

    if-lt p0, v6, :cond_381

    const/16 v6, 0x153

    if-gt p0, v6, :cond_381

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_381
    const/16 v6, 0x19c

    if-lt p0, v6, :cond_38d

    const/16 v6, 0x1a3

    if-gt p0, v6, :cond_38d

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_38d
    const/16 v6, 0x38c

    if-ne p0, v6, :cond_399

    const/16 v6, 0x3cc

    if-eq p0, v6, :cond_399

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_399
    const/16 v6, 0x39d

    if-lt p0, v6, :cond_3a5

    const/16 v6, 0x39f

    if-gt p0, v6, :cond_3a5

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_3a5
    const/16 v6, 0x3bd

    if-lt p0, v6, :cond_3b1

    const/16 v6, 0x3bf

    if-gt p0, v6, :cond_3b1

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_3b1
    const/16 v6, 0x420

    if-lt p0, v6, :cond_3bd

    const/16 v6, 0x423

    if-gt p0, v6, :cond_3bd

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_3bd
    const/16 v6, 0x440

    if-lt p0, v6, :cond_3c9

    const/16 v6, 0x443

    if-gt p0, v6, :cond_3c9

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_3c9
    const/16 v6, 0x1ecc

    if-lt p0, v6, :cond_3d5

    const/16 v6, 0x1ee3

    if-gt p0, v6, :cond_3d5

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_3d5
    const/16 v6, 0x3142

    if-ne p0, v6, :cond_3e1

    const/16 v6, 0x314d

    if-eq p0, v6, :cond_3e1

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_3e1
    const/16 v6, 0x62c

    if-lt p0, v6, :cond_3ed

    const/16 v6, 0x62e

    if-gt p0, v6, :cond_3ed

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_3ed
    const/16 v6, 0x686

    if-ne p0, v6, :cond_3f5

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_3f5
    const/16 v6, 0x5d6

    if-lt p0, v6, :cond_401

    const/16 v6, 0x5d8

    if-gt p0, v6, :cond_401

    const/16 v3, 0x36

    goto/16 :goto_78

    :cond_401
    const/16 v6, 0x154

    if-lt p0, v6, :cond_40d

    const/16 v6, 0x161

    if-gt p0, v6, :cond_40d

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_40d
    const/16 v6, 0xdf

    if-ne p0, v6, :cond_415

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_415
    const/16 v6, 0x1a4

    if-lt p0, v6, :cond_421

    const/16 v6, 0x1aa

    if-gt p0, v6, :cond_421

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_421
    const/16 v6, 0x3a0

    if-lt p0, v6, :cond_42d

    const/16 v6, 0x3a3

    if-gt p0, v6, :cond_42d

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_42d
    const/16 v6, 0x3c0

    if-lt p0, v6, :cond_439

    const/16 v6, 0x3c3

    if-gt p0, v6, :cond_439

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_439
    const/16 v6, 0x424

    if-lt p0, v6, :cond_445

    const/16 v6, 0x427

    if-gt p0, v6, :cond_445

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_445
    const/16 v6, 0x444

    if-lt p0, v6, :cond_451

    const/16 v6, 0x447

    if-gt p0, v6, :cond_451

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_451
    const/16 v6, 0x3145

    if-ne p0, v6, :cond_45d

    const/16 v6, 0x6cc

    if-eq p0, v6, :cond_45d

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_45d
    const/16 v6, 0x646

    if-lt p0, v6, :cond_469

    const/16 v6, 0x648

    if-gt p0, v6, :cond_469

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_469
    const/16 v6, 0x64a

    if-ne p0, v6, :cond_475

    const/16 v6, 0x624

    if-eq p0, v6, :cond_475

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_475
    const/16 v6, 0x626

    if-ne p0, v6, :cond_47d

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_47d
    const/16 v6, 0x5e8

    if-lt p0, v6, :cond_489

    const/16 v6, 0x5ea

    if-gt p0, v6, :cond_489

    const/16 v3, 0x37

    goto/16 :goto_78

    :cond_489
    const/16 v6, 0xd9

    if-lt p0, v6, :cond_495

    const/16 v6, 0xdc

    if-gt p0, v6, :cond_495

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_495
    const/16 v6, 0xf9

    if-lt p0, v6, :cond_4a1

    const/16 v6, 0xfc

    if-gt p0, v6, :cond_4a1

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_4a1
    const/16 v6, 0x162

    if-lt p0, v6, :cond_4ad

    const/16 v6, 0x173

    if-gt p0, v6, :cond_4ad

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_4ad
    const/16 v6, 0x1ab

    if-lt p0, v6, :cond_4b9

    const/16 v6, 0x1b2

    if-gt p0, v6, :cond_4b9

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_4b9
    const/16 v6, 0x1d3

    if-lt p0, v6, :cond_4c5

    const/16 v6, 0x1dc

    if-gt p0, v6, :cond_4c5

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_4c5
    const/16 v6, 0x3a4

    if-lt p0, v6, :cond_4d1

    const/16 v6, 0x3a6

    if-gt p0, v6, :cond_4d1

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_4d1
    const/16 v6, 0x3c4

    if-lt p0, v6, :cond_4dd

    const/16 v6, 0x3c6

    if-gt p0, v6, :cond_4dd

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_4dd
    const/16 v6, 0x3cb

    if-ne p0, v6, :cond_4e9

    const/16 v6, 0x3147

    if-eq p0, v6, :cond_4e9

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_4e9
    const/16 v6, 0x428

    if-lt p0, v6, :cond_4f5

    const/16 v6, 0x42b

    if-gt p0, v6, :cond_4f5

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_4f5
    const/16 v6, 0x448

    if-lt p0, v6, :cond_501

    const/16 v6, 0x44b

    if-gt p0, v6, :cond_501

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_501
    const/16 v6, 0x1ee4

    if-lt p0, v6, :cond_50d

    const/16 v6, 0x1ef1

    if-gt p0, v6, :cond_50d

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_50d
    const/16 v6, 0x641

    if-lt p0, v6, :cond_519

    const/16 v6, 0x645

    if-gt p0, v6, :cond_519

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_519
    const/16 v6, 0x6a9

    if-ne p0, v6, :cond_525

    const/16 v6, 0x6af

    if-eq p0, v6, :cond_525

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_525
    const/16 v6, 0x5e5

    if-lt p0, v6, :cond_531

    const/16 v6, 0x5e7

    if-gt p0, v6, :cond_531

    const/16 v3, 0x38

    goto/16 :goto_78

    :cond_531
    const/16 v6, 0xdd

    if-ne p0, v6, :cond_53d

    const/16 v6, 0xfd

    if-eq p0, v6, :cond_53d

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_53d
    const/16 v6, 0x174

    if-lt p0, v6, :cond_549

    const/16 v6, 0x17e

    if-gt p0, v6, :cond_549

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_549
    const/16 v6, 0x1b3

    if-lt p0, v6, :cond_555

    const/16 v6, 0x1bf

    if-gt p0, v6, :cond_555

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_555
    const/16 v6, 0x38f

    if-ne p0, v6, :cond_561

    const/16 v6, 0x3ce

    if-eq p0, v6, :cond_561

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_561
    const/16 v6, 0x3a7

    if-lt p0, v6, :cond_56d

    const/16 v6, 0x3a9

    if-gt p0, v6, :cond_56d

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_56d
    const/16 v6, 0x3c7

    if-lt p0, v6, :cond_579

    const/16 v6, 0x3c9

    if-gt p0, v6, :cond_579

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_579
    const/16 v6, 0x42c

    if-lt p0, v6, :cond_585

    const/16 v6, 0x42f

    if-gt p0, v6, :cond_585

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_585
    const/16 v6, 0x44c

    if-lt p0, v6, :cond_591

    const/16 v6, 0x44f

    if-gt p0, v6, :cond_591

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_591
    const/16 v6, 0x1ef2

    if-lt p0, v6, :cond_59d

    const/16 v6, 0x1ef9

    if-gt p0, v6, :cond_59d

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_59d
    const/16 v6, 0x3148

    if-ne p0, v6, :cond_5a9

    const/16 v6, 0x314a

    if-eq p0, v6, :cond_5a9

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_5a9
    const/16 v6, 0x637

    if-lt p0, v6, :cond_5b5

    const/16 v6, 0x63a

    if-gt p0, v6, :cond_5b5

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_5b5
    const/16 v6, 0x5e1

    if-lt p0, v6, :cond_5c1

    const/16 v6, 0x5e4

    if-gt p0, v6, :cond_5c1

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_5c1
    const/16 v6, 0x314e

    if-ne p0, v6, :cond_5c9

    const/16 v3, 0x39

    goto/16 :goto_78

    :cond_5c9
    invoke-static {p0}, Lcom/android/providers/contacts/t9/T9Kdg;->isValidT9Key(C)Z

    move-result v6

    if-nez v6, :cond_78

    move v3, p0

    goto/16 :goto_78

    :cond_5d2
    invoke-static {v12, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move v4, v3

    goto/16 :goto_69

    :catch_5d8
    move-exception v6

    goto/16 :goto_29
.end method

.method public static isValidT9Key(C)Z
    .registers 2
    .param p0, "paramChar"    # C

    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_18

    const/16 v0, 0x23

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method