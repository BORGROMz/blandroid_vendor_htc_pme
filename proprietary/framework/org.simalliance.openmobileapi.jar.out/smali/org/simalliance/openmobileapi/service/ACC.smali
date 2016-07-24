.class public Lorg/simalliance/openmobileapi/service/ACC;
.super Ljava/lang/Object;
.source "ACC.java"


# static fields
.field private static final DEFAULT_UICC_NAME:Ljava/lang/String; = "SIM1"

.field private static final NAME:Ljava/lang/String; = "SmartCardServiceGP"

.field private static final NAME_CORE:Ljava/lang/String; = "Android_Core_Framework"

.field private static final NAME_GEMALTO:Ljava/lang/String; = "SmartCardServiceGemalto"

.field private static final TAG:Ljava/lang/String; = "ApplicationCustomizationCenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 3
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 18
    .local v0, "mManager":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v0, :cond_0

    .line 19
    const-string v1, "ApplicationCustomizationCenter"

    const-string v2, "mManager is null"

    invoke-static {v1, v2}, Lorg/simalliance/openmobileapi/service/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v1, 0x0

    .line 22
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    goto :goto_0
.end method

.method private static getSkuId()I
    .locals 4

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "HTC_Generic":I
    const-string v1, "Android_Core_Framework"

    const-string v2, "nfc_sku_id"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/simalliance/openmobileapi/service/ACC;->readInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getUiccName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    const-string v0, "SmartCardServiceGP"

    const-string v1, "seek_uicc_name"

    const-string v2, "SIM1"

    invoke-static {v0, v1, v2}, Lorg/simalliance/openmobileapi/service/ACC;->readString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCRSM()Z
    .locals 2

    .prologue
    .line 119
    const-string v0, "ApplicationCustomizationCenter"

    const-string v1, "The solution of AT+CRSM is supported."

    invoke-static {v0, v1}, Lorg/simalliance/openmobileapi/service/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lorg/simalliance/openmobileapi/service/ACC;->isTmiSku()Z

    move-result v0

    return v0
.end method

.method public static isClfFilteringOn()Z
    .locals 3

    .prologue
    .line 62
    const-string v0, "SmartCardServiceGP"

    const-string v1, "seek_is_clf_filter_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/simalliance/openmobileapi/service/ACC;->readBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCmccSku()Z
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lorg/simalliance/openmobileapi/service/ACC;->getSkuId()I

    move-result v0

    .line 79
    .local v0, "skuId":I
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 80
    const-string v1, "ApplicationCustomizationCenter"

    const-string v2, "CMCC Sku"

    invoke-static {v1, v2}, Lorg/simalliance/openmobileapi/service/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x1

    .line 83
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCtSku()Z
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lorg/simalliance/openmobileapi/service/ACC;->getSkuId()I

    move-result v0

    .line 92
    .local v0, "skuId":I
    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 93
    const-string v1, "ApplicationCustomizationCenter"

    const-string v2, "CT Sku"

    invoke-static {v1, v2}, Lorg/simalliance/openmobileapi/service/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x1

    .line 96
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKddiSku()Z
    .locals 3

    .prologue
    .line 87
    const-string v0, "SmartCardServiceGP"

    const-string v1, "seek_is_kddi_sku"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/simalliance/openmobileapi/service/ACC;->readBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNeedToCheckSimReady()Z
    .locals 3

    .prologue
    .line 66
    const-string v0, "SmartCardServiceGP"

    const-string v1, "seek_is_need_to_check_sim_ready"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/simalliance/openmobileapi/service/ACC;->readBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportFelicaLockService()Z
    .locals 3

    .prologue
    .line 125
    const-string v0, "SmartCardServiceGemalto"

    const-string v1, "seek_support_felica_lock_service"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/simalliance/openmobileapi/service/ACC;->readBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTmiSku()Z
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Lorg/simalliance/openmobileapi/service/ACC;->getSkuId()I

    move-result v0

    .line 102
    .local v0, "skuId":I
    packed-switch v0, :pswitch_data_0

    .line 113
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 110
    :pswitch_0
    const-string v1, "ApplicationCustomizationCenter"

    const-string v2, "TMI sku"

    invoke-static {v1, v2}, Lorg/simalliance/openmobileapi/service/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v1, 0x1

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isVzwSku()Z
    .locals 3

    .prologue
    .line 58
    const-string v0, "SmartCardServiceGP"

    const-string v1, "seek_is_vzw_sku"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/simalliance/openmobileapi/service/ACC;->readBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static readBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 25
    invoke-static {p0}, Lorg/simalliance/openmobileapi/service/ACC;->getReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 26
    .local v1, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-nez v1, :cond_0

    .line 27
    const-string v2, "ApplicationCustomizationCenter"

    const-string v3, "reader is null"

    invoke-static {v2, v3}, Lorg/simalliance/openmobileapi/service/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 31
    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 32
    .local v0, "acc":Z
    const-string v2, "ApplicationCustomizationCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/simalliance/openmobileapi/service/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    .line 33
    goto :goto_0
.end method

.method private static readInteger(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 47
    invoke-static {p0}, Lorg/simalliance/openmobileapi/service/ACC;->getReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 48
    .local v1, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-nez v1, :cond_0

    .line 49
    const-string v2, "ApplicationCustomizationCenter"

    const-string v3, "reader is null"

    invoke-static {v2, v3}, Lorg/simalliance/openmobileapi/service/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 53
    .restart local p2    # "defaultValue":I
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, "acc":I
    const-string v2, "ApplicationCustomizationCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/simalliance/openmobileapi/service/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    .line 55
    goto :goto_0
.end method

.method private static readString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lorg/simalliance/openmobileapi/service/ACC;->getReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 37
    .local v1, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-nez v1, :cond_0

    .line 38
    const-string v2, "ApplicationCustomizationCenter"

    const-string v3, "reader is null"

    invoke-static {v2, v3}, Lorg/simalliance/openmobileapi/service/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 42
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "acc":Ljava/lang/String;
    const-string v2, "ApplicationCustomizationCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/simalliance/openmobileapi/service/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    .line 44
    goto :goto_0
.end method
