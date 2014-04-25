.class public abstract Lexternal/org/apache/commons/lang3/text/StrLookup;
.super Ljava/lang/Object;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/text/StrLookup$MapStrLookup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NONE_LOOKUP:Lexternal/org/apache/commons/lang3/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexternal/org/apache/commons/lang3/text/StrLookup",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_PROPERTIES_LOOKUP:Lexternal/org/apache/commons/lang3/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexternal/org/apache/commons/lang3/text/StrLookup",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v4, Lexternal/org/apache/commons/lang3/text/StrLookup$MapStrLookup;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lexternal/org/apache/commons/lang3/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    sput-object v4, Lexternal/org/apache/commons/lang3/text/StrLookup;->NONE_LOOKUP:Lexternal/org/apache/commons/lang3/text/StrLookup;

    const/4 v1, 0x0

    :try_start_9
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    move-object v3, v2

    new-instance v1, Lexternal/org/apache/commons/lang3/text/StrLookup$MapStrLookup;

    invoke-direct {v1, v3}, Lexternal/org/apache/commons/lang3/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_13} :catch_16

    :goto_13
    sput-object v1, Lexternal/org/apache/commons/lang3/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lexternal/org/apache/commons/lang3/text/StrLookup;

    return-void

    :catch_16
    move-exception v0

    sget-object v1, Lexternal/org/apache/commons/lang3/text/StrLookup;->NONE_LOOKUP:Lexternal/org/apache/commons/lang3/text/StrLookup;

    goto :goto_13
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapLookup(Ljava/util/Map;)Lexternal/org/apache/commons/lang3/text/StrLookup;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lexternal/org/apache/commons/lang3/text/StrLookup",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrLookup$MapStrLookup;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static noneLookup()Lexternal/org/apache/commons/lang3/text/StrLookup;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexternal/org/apache/commons/lang3/text/StrLookup",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrLookup;->NONE_LOOKUP:Lexternal/org/apache/commons/lang3/text/StrLookup;

    return-object v0
.end method

.method public static systemPropertiesLookup()Lexternal/org/apache/commons/lang3/text/StrLookup;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexternal/org/apache/commons/lang3/text/StrLookup",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lexternal/org/apache/commons/lang3/text/StrLookup;

    return-object v0
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/lang/String;
.end method
