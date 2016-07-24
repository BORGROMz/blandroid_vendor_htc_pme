.class public Lorg/simalliance/openmobileapi/service/SmartcardError;
.super Ljava/lang/Object;
.source "SmartcardError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/simalliance/openmobileapi/service/SmartcardError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClazz:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError$1;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError$1;-><init>()V

    sput-object v0, Lorg/simalliance/openmobileapi/service/SmartcardError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/simalliance/openmobileapi/service/SmartcardError$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/simalliance/openmobileapi/service/SmartcardError$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "clazz":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 70
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "message":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private createMissingResourceException(Ljava/lang/String;)Ljava/lang/Exception;
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    if-nez p1, :cond_0

    .line 138
    const-string p1, ""

    .line 140
    :cond_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 141
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 142
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 77
    const-string v0, ""

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public createException()Ljava/lang/Exception;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 91
    const-string v0, "SmartcardError"

    .line 94
    .local v0, "TAG":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v4

    .line 130
    :goto_0
    return-object v3

    .line 98
    :cond_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 100
    iget-object v3, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    const-string v5, "java.util.MissingResourceException"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    const-string v3, ""

    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createMissingResourceException(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v3

    goto :goto_0

    .line 104
    :cond_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    goto :goto_0

    .line 108
    :cond_2
    iget-object v3, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    const-string v5, "java.util.MissingResourceException"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    iget-object v3, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createMissingResourceException(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v3

    goto :goto_0

    .line 113
    :cond_3
    iget-object v3, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 114
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 116
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Class not found."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move-object v3, v4

    .line 130
    goto :goto_0

    .line 118
    :catch_1
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'s Constructor not found."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " cannot be instantiated"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 122
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'s constructor is not accessible."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'s constructor throws InvocationTargetException."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 126
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'s constructor are passed in an incorrect number of arguments."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setError(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 164
    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 165
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "message":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 166
    return-void

    .line 164
    .restart local p2    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public throwException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simalliance/openmobileapi/service/CardException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/CardException;

    if-eqz v1, :cond_1

    .line 183
    check-cast v0, Lorg/simalliance/openmobileapi/service/CardException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 185
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 186
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 188
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    return-void
.end method
