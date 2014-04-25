.class Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitStripAccents"
.end annotation


# static fields
.field private static final java6Exception:Ljava/lang/Throwable;

.field private static final java6NormalizeMethod:Ljava/lang/reflect/Method;

.field private static final java6NormalizerFormNFD:Ljava/lang/Object;

.field private static final java6Pattern:Ljava/util/regex/Pattern;

.field private static final sunDecomposeMethod:Ljava/lang/reflect/Method;

.field private static final sunException:Ljava/lang/Throwable;

.field private static final sunPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const-string v9, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    sget-object v9, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    sput-object v9, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v10, "java.text.Normalizer$Form"

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "NFD"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v10, "java.text.Normalizer"

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v9, "normalize"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/CharSequence;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_48} :catch_54

    move-result-object v1

    :goto_49
    sput-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    sput-object v2, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    sput-object v1, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    sput-object v4, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    sput-object v3, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    return-void

    :catch_54
    move-exception v5

    move-object v0, v5

    :try_start_56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v10, "sun.text.Normalizer"

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v9, "decompose"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_7b} :catch_7d

    move-result-object v3

    goto :goto_49

    :catch_7d
    move-exception v6

    move-object v4, v6

    goto :goto_49
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Throwable;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Throwable;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method
