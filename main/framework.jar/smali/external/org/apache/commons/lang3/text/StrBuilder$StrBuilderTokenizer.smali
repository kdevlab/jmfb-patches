.class Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;
.super Lexternal/org/apache/commons/lang3/text/StrTokenizer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lexternal/org/apache/commons/lang3/text/StrBuilder;)V
    .registers 2

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 3

    invoke-super {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .registers 7
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_12

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v0, v0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    invoke-super {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-super {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    goto :goto_11
.end method
