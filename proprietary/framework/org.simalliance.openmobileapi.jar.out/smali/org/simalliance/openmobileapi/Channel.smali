.class public Lorg/simalliance/openmobileapi/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# instance fields
.field private final mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Lorg/simalliance/openmobileapi/SEService;

.field private mSession:Lorg/simalliance/openmobileapi/Session;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/Session;Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;)V
    .locals 1
    .param p1, "service"    # Lorg/simalliance/openmobileapi/SEService;
    .param p2, "session"    # Lorg/simalliance/openmobileapi/Session;
    .param p3, "channel"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    .line 52
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    .line 53
    iput-object p3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    .line 54
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "service not connected to system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_1
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v1, :cond_2

    .line 66
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "channel must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_2
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Channel;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_3
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 72
    .local v0, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v1, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    invoke-static {v0}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getSelectResponse()[B
    .locals 5

    .prologue
    .line 193
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "service not connected to system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v3, :cond_2

    .line 197
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "channel must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "channel is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->getSelectResponse()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 214
    .local v2, "response":[B
    if-eqz v2, :cond_4

    array-length v3, v2

    if-nez v3, :cond_4

    .line 215
    const/4 v2, 0x0

    .line 216
    :cond_4
    return-object v2

    .line 210
    .end local v2    # "response":[B
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSession()Lorg/simalliance/openmobileapi/Session;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Channel;->mSession:Lorg/simalliance/openmobileapi/Session;

    return-object v0
.end method

.method public isBasicChannel()Z
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "service not connected to system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_1
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v1, :cond_2

    .line 110
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "channel must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isBasicChannel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 84
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-eqz v2, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public selectNext()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v5}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "service not connected to system"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 239
    :cond_1
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v5, :cond_2

    .line 240
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "channel must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 244
    :cond_2
    const/4 v3, 0x0

    .line 246
    .local v3, "isClosed":Z
    :try_start_0
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v5}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->isClosed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 250
    if-eqz v3, :cond_3

    .line 251
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "channel is closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 255
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x0

    .line 256
    .local v4, "response":Z
    iget-object v6, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 257
    :try_start_1
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    .local v2, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_2
    iget-object v5, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v5, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->selectNext(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v4

    .line 260
    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/simalliance/openmobileapi/service/CardException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :try_start_3
    invoke-static {v2}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 270
    monitor-exit v6

    .line 271
    return v4

    .line 263
    :catch_1
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 270
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 265
    .restart local v2    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catch_2
    move-exception v0

    .line 267
    .local v0, "e":Lorg/simalliance/openmobileapi/service/CardException;
    :try_start_4
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/service/CardException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public transmit([B)[B
    .locals 6
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "service not connected to system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    if-nez v3, :cond_2

    .line 155
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "channel must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_2
    invoke-static {p1}, Lorg/simalliance/openmobileapi/util/ApduChecker;->checkLengthForSimIso7816([B)V

    .line 161
    iget-object v4, p0, Lorg/simalliance/openmobileapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 162
    :try_start_0
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .local v1, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Channel;->mChannel:Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;

    invoke-interface {v3, p1, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;->transmit([BLorg/simalliance/openmobileapi/service/SmartcardError;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 168
    .local v2, "response":[B
    :try_start_2
    invoke-static {v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 169
    monitor-exit v4

    .line 170
    return-object v2

    .line 165
    .end local v2    # "response":[B
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
