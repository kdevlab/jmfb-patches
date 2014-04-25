.class public Lexternal/org/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "EventListenerSupport.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/event/EventListenerSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProxyInvocationHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lexternal/org/apache/commons/lang3/event/EventListenerSupport;


# direct methods
.method protected constructor <init>(Lexternal/org/apache/commons/lang3/event/EventListenerSupport;)V
    .registers 2

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lexternal/org/apache/commons/lang3/event/EventListenerSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/reflect/Method;
    .param p3    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lexternal/org/apache/commons/lang3/event/EventListenerSupport;

    # getter for: Lexternal/org/apache/commons/lang3/event/EventListenerSupport;->listeners:Ljava/util/List;
    invoke-static {v2}, Lexternal/org/apache/commons/lang3/event/EventListenerSupport;->access$000(Lexternal/org/apache/commons/lang3/event/EventListenerSupport;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_18
    const/4 v2, 0x0

    return-object v2
.end method
