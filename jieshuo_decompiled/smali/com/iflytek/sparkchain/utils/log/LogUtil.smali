.class public Lcom/iflytek/sparkchain/utils/log/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:I = 0x6

.field private static final D:I = 0x2

.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "A.I.Kit"

.field private static final E:I = 0x5

.field private static final I:I = 0x3

.field private static IS_SHOW_LOG:Z = true

.field private static final JSON:I = 0x7

.field private static final JSON_INDENT:I = 0x4

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final V:I = 0x1

.field private static final W:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sparkchain/utils/log/LogUtil;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "A.I.Kit"

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "A.I.Kit"

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static e()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "A.I.Kit"

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static i()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "A.I.Kit"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static init(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/sparkchain/utils/log/LogUtil;->IS_SHOW_LOG:Z

    return-void
.end method

.method public static json(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static json(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static printLine(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    goto :goto_0

    :cond_0
    const-string p1, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printLog(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 8

    sget-boolean v0, Lcom/iflytek/sparkchain/utils/log/LogUtil;->IS_SHOW_LOG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    if-nez p1, :cond_1

    move-object p1, v2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")#"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string p2, "Log with null Object"

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Empty or Null json content"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :try_start_0
    const-string p0, "{"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string p0, "["

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    invoke-static {p1, v6}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLine(Ljava/lang/String;Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/iflytek/sparkchain/utils/log/LogUtil;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    aget-object v2, p0, v1

    const-string v3, "\u2551 "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/iflytek/sparkchain/utils/log/LogUtil;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xc80

    if-le p0, v0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonContent.length = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/2addr p0, v0

    const/4 v0, 0x0

    :goto_3
    if-gt v0, p0, :cond_a

    add-int/lit8 v1, v0, 0x1

    mul-int/lit16 v2, v1, 0xc80

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_8

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit16 v0, v0, 0xc80

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    mul-int/lit16 v0, v0, 0xc80

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_3

    :cond_9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {p1, v5}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLine(Ljava/lang/String;Z)V

    goto :goto_5

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_3
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_4
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_6
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static v()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "A.I.Kit"

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static w()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "A.I.Kit"

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
