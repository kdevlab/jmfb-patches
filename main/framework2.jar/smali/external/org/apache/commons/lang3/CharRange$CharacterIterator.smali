.class Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/CharRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private current:C

.field private hasNext:Z

.field private final range:Lexternal/org/apache/commons/lang3/CharRange;


# direct methods
.method private constructor <init>(Lexternal/org/apache/commons/lang3/CharRange;)V
    .registers 5
    .param p1    # Lexternal/org/apache/commons/lang3/CharRange;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->range:Lexternal/org/apache/commons/lang3/CharRange;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->range:Lexternal/org/apache/commons/lang3/CharRange;

    # getter for: Lexternal/org/apache/commons/lang3/CharRange;->negated:Z
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/CharRange;->access$100(Lexternal/org/apache/commons/lang3/CharRange;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->range:Lexternal/org/apache/commons/lang3/CharRange;

    # getter for: Lexternal/org/apache/commons/lang3/CharRange;->start:C
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/CharRange;->access$200(Lexternal/org/apache/commons/lang3/CharRange;)C

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->range:Lexternal/org/apache/commons/lang3/CharRange;

    # getter for: Lexternal/org/apache/commons/lang3/CharRange;->end:C
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/CharRange;->access$300(Lexternal/org/apache/commons/lang3/CharRange;)C

    move-result v0

    const v1, 0xffff

    if-ne v0, v1, :cond_27

    iput-boolean v2, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->range:Lexternal/org/apache/commons/lang3/CharRange;

    # getter for: Lexternal/org/apache/commons/lang3/CharRange;->end:C
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/CharRange;->access$300(Lexternal/org/apache/commons/lang3/CharRange;)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_26

    :cond_33
    iput-char v2, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_26

    :cond_36
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->range:Lexternal/org/apache/commons/lang3/CharRange;

    # getter for: Lexternal/org/apache/commons/lang3/CharRange;->start:C
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/CharRange;->access$200(Lexternal/org/apache/commons/lang3/CharRange;)C

    move-result v0

    iput-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_26
.end method

.method synthetic constructor <init>(Lexternal/org/apache/commons/lang3/CharRange;Lexternal/org/apache/commons/lang3/CharRange$1;)V
    .registers 3
    .param p1    # Lexternal/org/apache/commons/lang3/CharRange;
    .param p2    # Lexternal/org/apache/commons/lang3/CharRange$1;

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;-><init>(Lexternal/org/apache/commons/lang3/CharRange;)V

    return-void
.end method

.method private prepareNext()V
    .registers 5

    const v3, 0xffff

    const/4 v2, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->range:Lexternal/org/apache/commons/lang3/CharRange;

    # getter for: Lexternal/org/apache/commons/lang3/CharRange;->negated:Z
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/CharRange;->access$100(Lexternal/org/apache/commons/lang3/CharRange;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    if-ne v0, v3, :cond_13

    iput-boolean v2, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    :goto_12
    return-void

    :cond_13
    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->range:Lexternal/org/apache/commons/lang3/CharRange;

    # getter for: Lexternal/org/apache/commons/lang3/CharRange;->start:C
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/CharRange;->access$200(Lexternal/org/apache/commons/lang3/CharRange;)C

    move-result v1

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->range:Lexternal/org/apache/commons/lang3/CharRange;

    # getter for: Lexternal/org/apache/commons/lang3/CharRange;->end:C
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/CharRange;->access$300(Lexternal/org/apache/commons/lang3/CharRange;)C

    move-result v0

    if-ne v0, v3, :cond_2a

    iput-boolean v2, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_12

    :cond_2a
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->range:Lexternal/org/apache/commons/lang3/CharRange;

    # getter for: Lexternal/org/apache/commons/lang3/CharRange;->end:C
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/CharRange;->access$300(Lexternal/org/apache/commons/lang3/CharRange;)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_12

    :cond_36
    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_12

    :cond_3e
    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->range:Lexternal/org/apache/commons/lang3/CharRange;

    # getter for: Lexternal/org/apache/commons/lang3/CharRange;->end:C
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/CharRange;->access$300(Lexternal/org/apache/commons/lang3/CharRange;)C

    move-result v1

    if-ge v0, v1, :cond_50

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_12

    :cond_50
    iput-boolean v2, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_12
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Character;
    .registers 3

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_a
    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->prepareNext()V

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;->next()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
