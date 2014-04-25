.class public Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/mutable/Mutable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x430a31a5c56f1c87L


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 3
    .param p1    # Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return v0
.end method

.method public compareTo(Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;)I
    .registers 4
    .param p1    # Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;

    iget-boolean v0, p1, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    if-ne v1, v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v1, -0x1

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->compareTo(Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v1, p1, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;

    invoke-virtual {p1}, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    if-eqz v0, :cond_b

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_a
.end method

.method public isFalse()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTrue()Z
    .registers 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .registers 3
    .param p1    # Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setValue(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    return-void
.end method

.method public toBoolean()Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
