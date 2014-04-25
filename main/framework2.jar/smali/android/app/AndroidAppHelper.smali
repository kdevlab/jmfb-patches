.class public Landroid/app/AndroidAppHelper;
.super Ljava/lang/Object;
.source "AndroidAppHelper.java"


# static fields
.field private static hasIsThemeable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/AndroidAppHelper;->hasIsThemeable:Z

    :try_start_3
    const-class v0, Landroid/content/res/CompatibilityInfo;

    const-string v1, "isThemeable"

    invoke-static {v0, v1}, Landroid/kdev/Helpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/AndroidAppHelper;->hasIsThemeable:Z
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_d} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d

    :catch_10
    move-exception v0

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addActiveResource(Ljava/lang/String;FZLandroid/content/res/Resources;)V
    .registers 12
    .param p0    # Ljava/lang/String;
    .param p1    # F
    .param p2    # Z
    .param p3    # Landroid/content/res/Resources;

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    if-nez v6, :cond_8

    :goto_7
    return-void

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-gt v0, v2, :cond_1f

    invoke-static {v6}, Landroid/app/AndroidAppHelper;->getActivityThread_mActiveResources(Landroid/app/ActivityThread;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v1}, Landroid/app/AndroidAppHelper;->createResourcesKey(Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v0, v2, :cond_38

    invoke-static {v6}, Landroid/app/AndroidAppHelper;->getActivityThread_mActiveResources(Landroid/app/ActivityThread;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v6, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v1, v2, p1, v1}, Landroid/app/AndroidAppHelper;->createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;FZ)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_38
    invoke-static {v6}, Landroid/app/AndroidAppHelper;->getActivityThread_mActiveResources(Landroid/app/ActivityThread;)Ljava/util/Map;

    move-result-object v7

    iget-object v2, v6, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/app/AndroidAppHelper;->createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;FLandroid/os/IBinder;Z)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method public static createResourcesKey(Ljava/lang/String;FZ)Ljava/lang/Object;
    .registers 8
    .param p0    # Ljava/lang/String;
    .param p1    # F
    .param p2    # Z

    :try_start_0
    const-string v2, "android.app.ActivityThread$ResourcesKey"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-boolean v2, Landroid/app/AndroidAppHelper;->hasIsThemeable:Z

    if-eqz v2, :cond_23

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/kdev/Helpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_22
    return-object v2

    :cond_23
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/kdev/Helpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_35

    move-result-object v2

    goto :goto_22

    :catch_35
    move-exception v1

    const/4 v2, 0x0

    goto :goto_22
.end method

.method public static createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;FLandroid/os/IBinder;Z)Ljava/lang/Object;
    .registers 11
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # Landroid/content/res/Configuration;
    .param p3    # F
    .param p4    # Landroid/os/IBinder;
    .param p5    # Z

    :try_start_0
    const-string v2, "android.content.res.ResourcesKey"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-boolean v2, Landroid/app/AndroidAppHelper;->hasIsThemeable:Z

    if-eqz v2, :cond_30

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p4, v2, v3

    invoke-static {v0, v2}, Landroid/kdev/Helpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2f
    return-object v2

    :cond_30
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-static {v0, v2}, Landroid/kdev/Helpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4d} :catch_4f

    move-result-object v2

    goto :goto_2f

    :catch_4f
    move-exception v1

    const/4 v2, 0x0

    goto :goto_2f
.end method

.method public static createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;FZ)Ljava/lang/Object;
    .registers 10
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # Landroid/content/res/Configuration;
    .param p3    # F
    .param p4    # Z

    :try_start_0
    const-string v2, "android.app.ActivityThread$ResourcesKey"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-boolean v2, Landroid/app/AndroidAppHelper;->hasIsThemeable:Z

    if-eqz v2, :cond_2d

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/kdev/Helpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2c
    return-object v2

    :cond_2d
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/kdev/Helpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_47} :catch_49

    move-result-object v2

    goto :goto_2c

    :catch_49
    move-exception v1

    const/4 v2, 0x0

    goto :goto_2c
.end method

.method public static createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Ljava/lang/Object;
    .registers 6
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # Landroid/content/res/Configuration;
    .param p3    # Landroid/content/res/CompatibilityInfo;

    const/4 v0, 0x0

    sget-boolean v1, Landroid/app/AndroidAppHelper;->hasIsThemeable:Z

    if-eqz v1, :cond_b

    :try_start_5
    const-string v1, "isThemeable"

    invoke-static {p3, v1}, Landroid/kdev/Helpers;->getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_12

    move-result v0

    :cond_b
    :goto_b
    iget v1, p3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {p0, p1, p2, v1, v0}, Landroid/app/AndroidAppHelper;->createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;FZ)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :catch_12
    move-exception v1

    goto :goto_b
.end method

.method public static createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 11
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # Landroid/content/res/Configuration;
    .param p3    # Landroid/content/res/CompatibilityInfo;
    .param p4    # Landroid/os/IBinder;

    const/4 v5, 0x0

    sget-boolean v0, Landroid/app/AndroidAppHelper;->hasIsThemeable:Z

    if-eqz v0, :cond_b

    :try_start_5
    const-string v0, "isThemeable"

    invoke-static {p3, v0}, Landroid/kdev/Helpers;->getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_16

    move-result v5

    :cond_b
    :goto_b
    iget v3, p3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/AndroidAppHelper;->createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;FLandroid/os/IBinder;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_16
    move-exception v0

    goto :goto_b
.end method

.method public static createResourcesKey(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Ljava/lang/Object;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/content/res/CompatibilityInfo;

    const/4 v0, 0x0

    sget-boolean v1, Landroid/app/AndroidAppHelper;->hasIsThemeable:Z

    if-eqz v1, :cond_b

    :try_start_5
    const-string v1, "isThemeable"

    invoke-static {p1, v1}, Landroid/kdev/Helpers;->getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_12

    move-result v0

    :cond_b
    :goto_b
    iget v1, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {p0, v1, v0}, Landroid/app/AndroidAppHelper;->createResourcesKey(Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :catch_12
    move-exception v1

    goto :goto_b
.end method

.method public static currentApplication()Landroid/app/Application;
    .registers 1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static currentApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_f

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static currentPackageName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_8
    return-object v1

    :cond_9
    const-string v1, "android"

    goto :goto_8
.end method

.method public static currentProcessName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "android"

    :cond_8
    return-object v0
.end method

.method public static getActivityThread_mActiveResources(Landroid/app/ActivityThread;)Ljava/util/Map;
    .registers 4
    .param p0    # Landroid/app/ActivityThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_9

    iget-object v1, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    :goto_8
    return-object v1

    :cond_9
    const-string v1, "mResourcesManager"

    invoke-static {p0, v1}, Landroid/kdev/Helpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mActiveResources"

    invoke-static {v0, v1}, Landroid/kdev/Helpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_8
.end method

.method public static getActivityThread_mPackages(Landroid/app/ActivityThread;)Ljava/util/Map;
    .registers 2
    .param p0    # Landroid/app/ActivityThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method
