.class Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;
.super Ljava/io/Writer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lexternal/org/apache/commons/lang3/text/StrBuilder;)V
    .registers 2

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write(I)V
    .registers 4
    .param p1    # I

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    return-void
.end method

.method public write([C)V
    .registers 3
    .param p1    # [C

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append([C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    return-void
.end method

.method public write([CII)V
    .registers 5
    .param p1    # [C
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append([CII)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    return-void
.end method
