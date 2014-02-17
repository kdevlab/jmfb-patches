.class public Lexternal/org/apache/commons/lang3/CharEncoding;
.super Ljava/lang/Object;
.source "CharEncoding.java"


# static fields
.field public static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field public static final UTF_16:Ljava/lang/String; = "UTF-16"

.field public static final UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field public static final UTF_16LE:Ljava/lang/String; = "UTF-16LE"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .registers 3
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v1

    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v1

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_3
.end method
