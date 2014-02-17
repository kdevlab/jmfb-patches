.class public Lexternal/org/apache/commons/lang3/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v5, 0x0

    :cond_3
    :goto_3
    return-object v5

    :cond_4
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x0

    :try_start_e
    new-instance v3, Lexternal/org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Lexternal/org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1b} :catch_30
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_40
    .catchall {:try_start_e .. :try_end_1b} :catchall_39

    :try_start_1b
    invoke-virtual {v3}, Lexternal/org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_21} :catch_58
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_21} :catch_55
    .catchall {:try_start_1b .. :try_end_21} :catchall_52

    if-eqz v3, :cond_3

    :try_start_23
    invoke-virtual {v3}, Lexternal/org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_3

    :catch_27
    move-exception v1

    new-instance v6, Lexternal/org/apache/commons/lang3/SerializationException;

    const-string v7, "IOException on closing cloned object data InputStream."

    invoke-direct {v6, v7, v1}, Lexternal/org/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_30
    move-exception v1

    :goto_31
    :try_start_31
    new-instance v6, Lexternal/org/apache/commons/lang3/SerializationException;

    const-string v7, "ClassNotFoundException while reading cloned object data"

    invoke-direct {v6, v7, v1}, Lexternal/org/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v6

    :goto_3a
    if-eqz v2, :cond_3f

    :try_start_3c
    invoke-virtual {v2}, Lexternal/org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_49

    :cond_3f
    throw v6

    :catch_40
    move-exception v1

    :goto_41
    :try_start_41
    new-instance v6, Lexternal/org/apache/commons/lang3/SerializationException;

    const-string v7, "IOException while reading cloned object data"

    invoke-direct {v6, v7, v1}, Lexternal/org/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_39

    :catch_49
    move-exception v1

    new-instance v6, Lexternal/org/apache/commons/lang3/SerializationException;

    const-string v7, "IOException on closing cloned object data InputStream."

    invoke-direct {v6, v7, v1}, Lexternal/org/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catchall_52
    move-exception v6

    move-object v2, v3

    goto :goto_3a

    :catch_55
    move-exception v1

    move-object v2, v3

    goto :goto_41

    :catch_58
    move-exception v1

    move-object v2, v3

    goto :goto_31
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 6
    .param p0    # Ljava/io/InputStream;

    if-nez p0, :cond_a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The InputStream must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_10} :catch_1a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_28
    .catchall {:try_start_b .. :try_end_10} :catchall_21

    :try_start_10
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_13} :catch_39
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_36
    .catchall {:try_start_10 .. :try_end_13} :catchall_33

    move-result-object v3

    if-eqz v2, :cond_19

    :try_start_16
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_2f

    :cond_19
    :goto_19
    return-object v3

    :catch_1a
    move-exception v0

    :goto_1b
    :try_start_1b
    new-instance v3, Lexternal/org/apache/commons/lang3/SerializationException;

    invoke-direct {v3, v0}, Lexternal/org/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v3

    :goto_22
    if-eqz v1, :cond_27

    :try_start_24
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_31

    :cond_27
    :goto_27
    throw v3

    :catch_28
    move-exception v0

    :goto_29
    :try_start_29
    new-instance v3, Lexternal/org/apache/commons/lang3/SerializationException;

    invoke-direct {v3, v0}, Lexternal/org/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_21

    :catch_2f
    move-exception v4

    goto :goto_19

    :catch_31
    move-exception v4

    goto :goto_27

    :catchall_33
    move-exception v3

    move-object v1, v2

    goto :goto_22

    :catch_36
    move-exception v0

    move-object v1, v2

    goto :goto_29

    :catch_39
    move-exception v0

    move-object v1, v2

    goto :goto_1b
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .registers 4
    .param p0    # [B

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The byte[] must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lexternal/org/apache/commons/lang3/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .registers 7
    .param p0    # Ljava/io/Serializable;
    .param p1    # Ljava/io/OutputStream;

    if-nez p1, :cond_a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The OutputStream must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_19
    .catchall {:try_start_b .. :try_end_10} :catchall_20

    :try_start_10
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_2e
    .catchall {:try_start_10 .. :try_end_13} :catchall_2b

    if-eqz v2, :cond_18

    :try_start_15
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_27

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    :goto_1a
    :try_start_1a
    new-instance v3, Lexternal/org/apache/commons/lang3/SerializationException;

    invoke-direct {v3, v0}, Lexternal/org/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v3

    :goto_21
    if-eqz v1, :cond_26

    :try_start_23
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_29

    :cond_26
    :goto_26
    throw v3

    :catch_27
    move-exception v3

    goto :goto_18

    :catch_29
    move-exception v4

    goto :goto_26

    :catchall_2b
    move-exception v3

    move-object v1, v2

    goto :goto_21

    :catch_2e
    move-exception v0

    move-object v1, v2

    goto :goto_1a
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .registers 3
    .param p0    # Ljava/io/Serializable;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
