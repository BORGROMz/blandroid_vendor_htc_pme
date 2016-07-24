.class public Lorg/simalliance/openmobileapi/SEService;
.super Ljava/lang/Object;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/SEService$CallBack;
    }
.end annotation


# static fields
.field private static final SERVICE_TAG:Ljava/lang/String; = "SEService"


# instance fields
.field private final mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

.field private mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mReaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/simalliance/openmobileapi/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/simalliance/openmobileapi/SEService$CallBack;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    .line 75
    new-instance v2, Lorg/simalliance/openmobileapi/SEService$1;

    invoke-direct {v2, p0}, Lorg/simalliance/openmobileapi/SEService$1;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "context must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_0
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    .line 121
    new-instance v2, Lorg/simalliance/openmobileapi/SEService$2;

    invoke-direct {v2, p0}, Lorg/simalliance/openmobileapi/SEService$2;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "org.simalliance.openmobileapi.service"

    const-string v4, "org.simalliance.openmobileapi.service.SmartcardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 142
    .local v0, "bindingSuccessful":Z
    if-eqz v0, :cond_1

    .line 143
    const-string v2, "SEService"

    const-string v3, "bindService successful"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;
    .locals 0
    .param p0, "x0"    # Lorg/simalliance/openmobileapi/SEService;
    .param p1, "x1"    # Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    return-object p1
.end method

.method static synthetic access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;
    .locals 1
    .param p0, "x0"    # Lorg/simalliance/openmobileapi/SEService;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    return-object v0
.end method

.method static checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .locals 3
    .param p0, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .prologue
    .line 262
    :try_start_0
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_0
    .catch Lorg/simalliance/openmobileapi/service/CardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "exp":Lorg/simalliance/openmobileapi/service/CardException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/service/CardException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    .end local v0    # "exp":Lorg/simalliance/openmobileapi/service/CardException;
    :catch_1
    move-exception v0

    .line 266
    .local v0, "exp":Ljava/security/AccessControlException;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/security/AccessControlException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    return-object v0
.end method

.method getReader(Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 247
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 248
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    const/4 v2, 0x0

    .line 250
    .local v2, "reader":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-interface {v3, p1, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getReader(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 256
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 257
    return-object v2

    .line 251
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getReaders()[Lorg/simalliance/openmobileapi/Reader;
    .locals 13

    .prologue
    .line 167
    iget-object v11, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v11, :cond_0

    .line 168
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "service not connected to system"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 171
    :cond_0
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 174
    .local v3, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v11, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-interface {v11, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getReaders(Lorg/simalliance/openmobileapi/service/SmartcardError;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 182
    .local v10, "readerNames":[Ljava/lang/String;
    iget-object v11, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 183
    .local v7, "preReaderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, v10

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v8, v0, v4

    .line 185
    .local v8, "readerName":Ljava/lang/String;
    iget-object v11, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 186
    iget-object v11, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    new-instance v12, Lorg/simalliance/openmobileapi/Reader;

    invoke-direct {v12, p0, v8}, Lorg/simalliance/openmobileapi/Reader;-><init>(Lorg/simalliance/openmobileapi/SEService;Ljava/lang/String;)V

    invoke-virtual {v11, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "preReaderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "readerName":Ljava/lang/String;
    .end local v10    # "readerNames":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 190
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "preReaderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "readerNames":[Ljava/lang/String;
    :cond_2
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 191
    .local v9, "readerNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 192
    .local v6, "preReaderName":Ljava/lang/String;
    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 193
    iget-object v11, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 197
    .end local v6    # "preReaderName":Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 198
    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/simalliance/openmobileapi/Reader;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v11

    new-array v11, v11, [Lorg/simalliance/openmobileapi/Reader;

    invoke-interface {v1, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/simalliance/openmobileapi/Reader;

    return-object v11
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "2.05"

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shutdown()V
    .locals 6

    .prologue
    .line 209
    iget-object v4, p0, Lorg/simalliance/openmobileapi/SEService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 210
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 212
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/simalliance/openmobileapi/Reader;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 213
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/simalliance/openmobileapi/Reader;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simalliance/openmobileapi/Reader;

    .line 216
    .local v2, "reader":Lorg/simalliance/openmobileapi/Reader;
    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/Reader;->closeSessions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    .end local v2    # "reader":Lorg/simalliance/openmobileapi/Reader;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 222
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/simalliance/openmobileapi/Reader;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/simalliance/openmobileapi/Reader;>;"
    :cond_0
    :try_start_2
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    :goto_1
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 228
    monitor-exit v4

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 223
    :catch_1
    move-exception v3

    goto :goto_1
.end method
