.class public Lexternal/org/apache/commons/lang3/mutable/MutableObject;
.super Ljava/lang/Object;
.source "MutableObject.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/mutable/Mutable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/mutable/Mutable",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x14146a94f5L


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v1

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    move-object v0, p1

    check-cast v0, Lexternal/org/apache/commons/lang3/mutable/MutableObject;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    iget-object v2, v0, Lexternal/org/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-string v0, "null"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
