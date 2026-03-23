.class public Lk2/b;
.super Lcom/baidu/location/BDAbstractLocationListener;
.source "SourceFile"


# instance fields
.field private final b:Lcom/baidu/location/LocationClient;

.field private final c:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 3

    invoke-direct {p0}, Lcom/baidu/location/BDAbstractLocationListener;-><init>()V

    iput-object p1, p0, Lk2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance p1, Lcom/baidu/location/LocationClient;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lk2/b;->b:Lcom/baidu/location/LocationClient;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setIsNeedAddress(Z)V

    sget-object v2, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setIsNeedLocationDescribe(Z)V

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setIsNeedLocationPoiList(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setNeedDeviceDirect(Z)V

    invoke-virtual {p1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    invoke-virtual {p1, p0}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDAbstractLocationListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lk2/b;->d:Z

    :cond_0
    return-void
.end method

.method static bridge synthetic a(Lk2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lk2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method public static c(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 1

    :try_start_0
    new-instance v0, Lk2/b;

    invoke-direct {v0, p0}, Lk2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v0}, Lk2/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v0, 0x7f07069c

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lk2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->requestPermissions(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lk2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070973

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    iget-object v0, p0, Lk2/b;->b:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    return-void
.end method

.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 3

    iget-object v0, p0, Lk2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "onReceiveLocation"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCountry()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getProvince()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDistrict()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getStreet()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lk2/b;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "\n\u9644\u8fd1\u6709\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/Poi;

    invoke-virtual {v0}, Lcom/baidu/location/Poi;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object p1, p0, Lk2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lk2/b$a;

    invoke-direct {v0, p0}, Lk2/b$a;-><init>(Lk2/b;)V

    invoke-static {p1, v0}, Lcom/nirenr/talkman/util/d;->f(Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    :goto_1
    iget-object p1, p0, Lk2/b;->b:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1, p0}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDAbstractLocationListener;)V

    iget-object p1, p0, Lk2/b;->b:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->stop()V

    return-void
.end method
