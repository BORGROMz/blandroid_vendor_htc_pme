.class public Lorg/simalliance/openmobileapi/util/ApduChecker;
.super Ljava/lang/Object;
.source "ApduChecker.java"


# static fields
.field private static final APDU_HEADER_LENGTH:I = 0x4

.field private static final APDU_LC_LENGTH:I = 0x1

.field private static final APDU_LE_LENGTH:I = 0x1

.field private static final EXTENDED_LC_LENGTH:I = 0x3

.field private static final EXTENDED_LE_LENGTH_2:I = 0x2

.field private static final EXTENDED_LE_LENGTH_3:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ApduChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLengthForSimIso7816([B)V
    .locals 8
    .param p0, "apdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    .line 72
    array-length v0, p0

    .line 73
    .local v0, "apduLength":I
    const/4 v1, 0x0

    .line 74
    .local v1, "dataLength":I
    const/4 v2, 0x0

    .line 76
    .local v2, "responseLength":I
    if-ge v0, v5, :cond_0

    .line 77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "apdu command too short"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_0
    if-ne v0, v5, :cond_2

    .line 82
    const/4 v1, 0x0

    .line 83
    const/4 v2, 0x0

    .line 84
    const-string v3, "ApduChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case 1: data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    if-ne v0, v6, :cond_4

    .line 88
    const/4 v1, 0x0

    .line 89
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 91
    if-nez v2, :cond_3

    .line 92
    const-string v3, "ApduChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case 2: data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response length = 256"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    if-lez v2, :cond_1

    .line 95
    const-string v3, "ApduChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case 2: data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_4
    if-ne v0, v4, :cond_6

    aget-byte v3, p0, v5

    if-nez v3, :cond_6

    .line 100
    const/4 v1, 0x0

    .line 101
    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, -0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit16 v4, v4, 0x100

    add-int v2, v3, v4

    .line 103
    if-nez v2, :cond_5

    .line 104
    const-string v3, "ApduChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case 3: data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response length = 65536"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_5
    if-lez v2, :cond_1

    .line 107
    const-string v3, "ApduChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case 3: data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_6
    if-le v0, v6, :cond_1

    .line 114
    aget-byte v3, p0, v5

    and-int/lit16 v1, v3, 0xff

    .line 115
    const/4 v2, 0x0

    .line 116
    aget-byte v3, p0, v5

    if-eqz v3, :cond_7

    add-int/lit8 v3, v0, -0x5

    if-ne v1, v3, :cond_7

    .line 117
    const-string v3, "ApduChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case 4: data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_7
    aget-byte v3, p0, v5

    and-int/lit16 v1, v3, 0xff

    .line 123
    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 124
    if-nez v2, :cond_8

    .line 125
    const/16 v2, 0x100

    .line 127
    :cond_8
    aget-byte v3, p0, v5

    if-eqz v3, :cond_9

    add-int/lit8 v3, v0, -0x6

    if-ne v1, v3, :cond_9

    .line 128
    const-string v3, "ApduChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case 6: data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_9
    if-le v0, v4, :cond_c

    .line 133
    aget-byte v3, p0, v6

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v3, v3, 0x100

    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    add-int v1, v3, v4

    .line 134
    const/4 v2, 0x0

    .line 135
    aget-byte v3, p0, v5

    if-nez v3, :cond_a

    array-length v3, p0

    add-int/lit8 v3, v3, -0x7

    if-ne v1, v3, :cond_a

    .line 136
    const-string v3, "ApduChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case 5: data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_a
    aget-byte v3, p0, v6

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v3, v3, 0x100

    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    add-int v1, v3, v4

    .line 142
    add-int/lit8 v3, v0, -0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v3, v3, 0x100

    add-int/lit8 v4, v0, -0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int v2, v3, v4

    .line 143
    if-nez v2, :cond_b

    .line 144
    const/high16 v2, 0x10000

    .line 147
    :cond_b
    aget-byte v3, p0, v5

    if-nez v3, :cond_c

    if-lez v1, :cond_c

    array-length v3, p0

    add-int/lit8 v3, v3, -0x9

    if-ne v1, v3, :cond_c

    .line 148
    const-string v3, "ApduChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case 7: data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "apdu command format error"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public checkLengthForSim([B)V
    .locals 5
    .param p1, "apdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "length":I
    const/4 v1, 0x0

    .line 32
    .local v1, "responseLength":I
    array-length v2, p1

    if-ne v2, v4, :cond_1

    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x0

    .line 35
    const-string v2, "ApduChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "case 1: data length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", response length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    array-length v2, p1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v1, v2, 0xff

    .line 41
    const-string v2, "ApduChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "case 2: data length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", response length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    array-length v2, p1

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 45
    aget-byte v2, p1, v4

    and-int/lit16 v0, v2, 0xff

    .line 46
    if-nez v0, :cond_3

    .line 48
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "apdu command format error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_3
    array-length v2, p1

    add-int/lit8 v2, v2, -0x5

    if-eq v0, v2, :cond_4

    array-length v2, p1

    add-int/lit8 v2, v2, -0x6

    if-ne v0, v2, :cond_6

    .line 52
    :cond_4
    array-length v2, p1

    add-int/lit8 v2, v2, -0x6

    if-ne v0, v2, :cond_5

    .line 53
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v1, v2, 0xff

    .line 60
    :cond_5
    const-string v2, "ApduChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "case 3 or 4: data length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", response length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/simalliance/openmobileapi/service/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "apdu command format error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
