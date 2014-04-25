.class public Lexternal/org/apache/commons/lang3/text/FormattableUtils;
.super Ljava/lang/Object;
.source "FormattableUtils.java"


# static fields
.field private static final SIMPLEST_FORMAT:Ljava/lang/String; = "%s"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;III)Ljava/util/Formatter;
    .registers 12
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/util/Formatter;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/16 v5, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIIC)Ljava/util/Formatter;
    .registers 13
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/util/Formatter;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # C

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;
    .registers 16
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/util/Formatter;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # C
    .param p6    # Ljava/lang/CharSequence;

    if-eqz p6, :cond_a

    if-ltz p4, :cond_a

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v4, p4, :cond_58

    :cond_a
    const/4 v4, 0x1

    :goto_b
    const-string v5, "Specified ellipsis \'%1$s\' exceeds precision of %2$s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p6, v6, v7

    const/4 v7, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lexternal/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ltz p4, :cond_43

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p4, v4, :cond_43

    const-string v4, ""

    invoke-static {p6, v4}, Lexternal/org/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v4, p4, v4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    and-int/lit8 v4, p2, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5a

    const/4 v3, 0x1

    :goto_49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_4d
    if-ge v2, p3, :cond_5e

    if-eqz v3, :cond_5c

    move v4, v2

    :goto_52
    invoke-virtual {v1, v4, p5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_58
    const/4 v4, 0x0

    goto :goto_b

    :cond_5a
    const/4 v3, 0x0

    goto :goto_49

    :cond_5c
    const/4 v4, 0x0

    goto :goto_52

    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-object p1
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIILjava/lang/CharSequence;)Ljava/util/Formatter;
    .registers 13
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/util/Formatter;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Ljava/lang/CharSequence;

    const/16 v5, 0x20

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/util/Formattable;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/util/Formattable;

    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
