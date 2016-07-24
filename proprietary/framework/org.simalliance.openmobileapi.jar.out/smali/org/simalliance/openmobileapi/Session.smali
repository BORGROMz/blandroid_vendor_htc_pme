.class public Lorg/simalliance/openmobileapi/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mReader:Lorg/simalliance/openmobileapi/Reader;

.field private final mService:Lorg/simalliance/openmobileapi/SEService;

.field private final mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;Lorg/simalliance/openmobileapi/Reader;)V
    .locals 1
    .param p1, "service"    # Lorg/simalliance/openmobileapi/SEService;
    .param p2, "session"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    .param p3, "reader"    # Lorg/simalliance/openmobileapi/Reader;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    .line 53
    iput-object p3, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    .line 54
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    .line 55
    return-void
.end method

.method private basicChannelInUse(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 3
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .prologue
    .line 334
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 335
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 338
    const-string v2, "basic channel in use"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const/4 v2, 0x1

    .line 343
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 4
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .prologue
    const/4 v2, 0x1

    .line 347
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 348
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 349
    instance-of v3, v0, Ljava/util/MissingResourceException;

    if-eqz v3, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v2

    .line 352
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 354
    const-string v3, "channel in use"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    const-string v3, "open channel failed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    const-string v3, "out of channels"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 363
    const-string v3, "MANAGE CHANNEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 370
    const-string v3, "SIM cannot establish basic channel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 376
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .locals 3
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 381
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 382
    instance-of v1, v0, Ljava/util/NoSuchElementException;

    if-eqz v1, :cond_0

    .line 383
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Applet with the defined aid does not exist in the SE"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_0
    return-void
.end method

.method private isDefaultApplicationSelected(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 3
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 322
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 325
    const-string v2, "default application is not selected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const/4 v2, 0x0

    .line 330
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    .line 93
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v2, :cond_0

    .line 99
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 100
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 107
    monitor-exit v3

    goto :goto_0

    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 103
    .restart local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public closeChannels()V
    .locals 5

    .prologue
    .line 133
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-eqz v2, :cond_0

    .line 140
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 141
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->closeChannels(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 148
    monitor-exit v3

    goto :goto_0

    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 144
    .restart local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getATR()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-static {}, Lorg/simalliance/openmobileapi/service/ACC;->isKddiSku()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    :goto_0
    return-object v1

    .line 75
    :cond_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "service not connected to system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_2
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-nez v2, :cond_3

    .line 79
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service session is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_3
    :try_start_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->getAtr()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getReader()Lorg/simalliance/openmobileapi/Reader;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Session;->mReader:Lorg/simalliance/openmobileapi/Reader;

    return-object v0
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x1

    .line 121
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    invoke-interface {v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->isClosed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openBasicChannel([B)Lorg/simalliance/openmobileapi/Channel;
    .locals 8
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 191
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v5}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 192
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "service not connected to system"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_1
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-nez v5, :cond_2

    .line 195
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "service session is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    :cond_2
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v5

    if-nez v5, :cond_3

    .line 198
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "reader must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    :cond_3
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 203
    :try_start_0
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .local v3, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v6, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    iget-object v7, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v7}, Lorg/simalliance/openmobileapi/SEService;->getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v7

    invoke-interface {v6, p1, v7, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->openBasicChannelAid([BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 212
    .local v1, "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :try_start_2
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 213
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 214
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->basicChannelInUse(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v0

    .line 215
    .local v0, "b":Z
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 216
    if-eqz v0, :cond_4

    .line 217
    monitor-exit v5

    .line 241
    :goto_0
    return-object v4

    .line 209
    .end local v0    # "b":Z
    .end local v1    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 242
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 219
    .restart local v0    # "b":Z
    .restart local v1    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .restart local v3    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 220
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v0

    .line 221
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 222
    if-eqz v0, :cond_5

    .line 223
    monitor-exit v5

    goto :goto_0

    .line 225
    :cond_5
    if-eqz p1, :cond_6

    array-length v6, p1

    if-nez v6, :cond_7

    .line 227
    :cond_6
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 228
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->isDefaultApplicationSelected(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v0

    .line 229
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 230
    if-nez v0, :cond_7

    .line 231
    monitor-exit v5

    goto :goto_0

    .line 234
    :cond_7
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;->clear()V

    .line 235
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 236
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 238
    if-nez v1, :cond_8

    .line 239
    monitor-exit v5

    goto :goto_0

    .line 241
    :cond_8
    new-instance v4, Lorg/simalliance/openmobileapi/Channel;

    iget-object v6, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v4, v6, p0, v1}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public openLogicalChannel([B)Lorg/simalliance/openmobileapi/Channel;
    .locals 8
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 274
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v5}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 275
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "service not connected to system"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_1
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    if-nez v5, :cond_2

    .line 278
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "service session is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 280
    :cond_2
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v5

    if-nez v5, :cond_3

    .line 281
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "reader must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 283
    :cond_3
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 284
    :try_start_0
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .local v3, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v6, p0, Lorg/simalliance/openmobileapi/Session;->mSession:Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    iget-object v7, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v7}, Lorg/simalliance/openmobileapi/SEService;->getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v7

    invoke-interface {v6, p1, v7, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;->openLogicalChannel([BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 297
    .local v1, "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :try_start_2
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v0

    .line 299
    .local v0, "b":Z
    if-eqz v0, :cond_4

    .line 300
    monitor-exit v5

    .line 310
    :goto_0
    return-object v4

    .line 291
    .end local v0    # "b":Z
    .end local v1    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    :catch_0
    move-exception v2

    .line 292
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 311
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 304
    .restart local v0    # "b":Z
    .restart local v1    # "channel":Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
    .restart local v3    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :cond_4
    :try_start_3
    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/Session;->checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 305
    invoke-static {v3}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 307
    if-nez v1, :cond_5

    .line 308
    monitor-exit v5

    goto :goto_0

    .line 310
    :cond_5
    new-instance v4, Lorg/simalliance/openmobileapi/Channel;

    iget-object v6, p0, Lorg/simalliance/openmobileapi/Session;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v4, v6, p0, v1}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
