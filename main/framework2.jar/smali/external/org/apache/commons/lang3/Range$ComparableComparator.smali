.class final enum Lexternal/org/apache/commons/lang3/Range$ComparableComparator;
.super Ljava/lang/Enum;
.source "Range.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ComparableComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lexternal/org/apache/commons/lang3/Range$ComparableComparator;",
        ">;",
        "Ljava/util/Comparator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lexternal/org/apache/commons/lang3/Range$ComparableComparator;

.field public static final enum INSTANCE:Lexternal/org/apache/commons/lang3/Range$ComparableComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lexternal/org/apache/commons/lang3/Range$ComparableComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lexternal/org/apache/commons/lang3/Range$ComparableComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lexternal/org/apache/commons/lang3/Range$ComparableComparator;->INSTANCE:Lexternal/org/apache/commons/lang3/Range$ComparableComparator;

    const/4 v0, 0x1

    new-array v0, v0, [Lexternal/org/apache/commons/lang3/Range$ComparableComparator;

    sget-object v1, Lexternal/org/apache/commons/lang3/Range$ComparableComparator;->INSTANCE:Lexternal/org/apache/commons/lang3/Range$ComparableComparator;

    aput-object v1, v0, v2

    sput-object v0, Lexternal/org/apache/commons/lang3/Range$ComparableComparator;->$VALUES:[Lexternal/org/apache/commons/lang3/Range$ComparableComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/Range$ComparableComparator;
    .registers 2
    .param p0    # Ljava/lang/String;

    const-class v0, Lexternal/org/apache/commons/lang3/Range$ComparableComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/Range$ComparableComparator;

    return-object v0
.end method

.method public static values()[Lexternal/org/apache/commons/lang3/Range$ComparableComparator;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/Range$ComparableComparator;->$VALUES:[Lexternal/org/apache/commons/lang3/Range$ComparableComparator;

    invoke-virtual {v0}, [Lexternal/org/apache/commons/lang3/Range$ComparableComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexternal/org/apache/commons/lang3/Range$ComparableComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
