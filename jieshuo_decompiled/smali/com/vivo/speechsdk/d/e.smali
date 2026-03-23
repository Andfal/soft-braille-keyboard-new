.class public Lcom/vivo/speechsdk/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/String; = "TotalByteCalculator"

.field private static final m:Ljava/lang/String; = "[\u3002\uff1b;!\uff01?\uff1f\u2026\u201c\u201d\uff08\uff09]"

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:I = 0x3e8

.field private static final p:I = 0x2710

.field private static final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\u3002\uff1b;!\uff01?\uff1f\u2026\u201c\u201d\uff08\uff09]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/d/e;->n:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/d/e;->q:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/d/e;->b:Z

    iput v0, p0, Lcom/vivo/speechsdk/d/e;->f:I

    iput v0, p0, Lcom/vivo/speechsdk/d/e;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/d/e;->h:Z

    const-string v0, "[\u3002\uff1b;!\uff01?\uff1f\u2026\u201c\u201d\uff08\uff09]"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\r"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\n"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\\s+"

    const-string v2, " "

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vivo/speechsdk/d/e;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "."

    iput-object p2, p0, Lcom/vivo/speechsdk/d/e;->a:Ljava/lang/String;

    :cond_0
    const-string p2, "key_speaker"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "key_speed"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "key_sample_rate"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/speechsdk/d/e;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/d/e;->j:Ljava/lang/String;

    sget-object p2, Lcom/vivo/speechsdk/d/e;->q:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/d/e;->j:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/vivo/speechsdk/d/e;->k:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/d/e;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/d/e;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/speechsdk/d/e;->k:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/vivo/speechsdk/d/e;->k:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/d/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(ILjava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(I)V
    .locals 4

    sget-object v0, Lcom/vivo/speechsdk/d/e;->q:Ljava/util/Map;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/e;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/e;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/speechsdk/d/e;->k:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/d/e;->a(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/vivo/speechsdk/d/e;->d:I

    iget-object v2, p0, Lcom/vivo/speechsdk/d/e;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x2710

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/vivo/speechsdk/d/e;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int v2, p1, v2

    iget v3, p0, Lcom/vivo/speechsdk/d/e;->c:I

    if-eq v2, v3, :cond_1

    iput v1, p0, Lcom/vivo/speechsdk/d/e;->d:I

    iget v2, p0, Lcom/vivo/speechsdk/d/e;->e:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/vivo/speechsdk/d/e;->e:I

    div-int/2addr v2, v1

    iput v2, p0, Lcom/vivo/speechsdk/d/e;->c:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vivo/speechsdk/d/e;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/d/e;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/d/e;->k:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save to sdcard key = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/e;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " word size = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/d/e;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TotalByteCalculator"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/e;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/e;->k:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/e;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/e;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/d/e;->d:I

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/d/e;->e:I

    iget v0, p0, Lcom/vivo/speechsdk/d/e;->d:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/vivo/speechsdk/d/e;->c:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)I
    .locals 8

    iget v0, p0, Lcom/vivo/speechsdk/d/e;->f:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/speechsdk/d/e;->i:J

    :cond_0
    iget v0, p0, Lcom/vivo/speechsdk/d/e;->f:I

    iget v1, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/speechsdk/d/e;->f:I

    iget v1, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean p1, p0, Lcom/vivo/speechsdk/d/e;->h:Z

    if-eqz p1, :cond_6

    iput-boolean v3, p0, Lcom/vivo/speechsdk/d/e;->h:Z

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/d/e;->a(I)V

    iput-boolean v2, p0, Lcom/vivo/speechsdk/d/e;->b:Z

    goto/16 :goto_2

    :cond_1
    iget v1, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    iget v0, p0, Lcom/vivo/speechsdk/d/e;->c:I

    if-gtz v0, :cond_4

    sget-object v0, Lcom/vivo/speechsdk/d/e;->q:Ljava/util/Map;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/e;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vivo/speechsdk/d/e;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/d/e;->a(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/vivo/speechsdk/d/e;->c:I

    if-gtz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/vivo/speechsdk/d/e;->i:J

    sub-long/2addr v0, v4

    iget v2, p0, Lcom/vivo/speechsdk/d/e;->g:I

    iget v4, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEndPos:I

    if-eq v2, v4, :cond_6

    const-wide/16 v5, 0x3e8

    cmp-long v2, v0, v5

    if-ltz v2, :cond_6

    iput v4, p0, Lcom/vivo/speechsdk/d/e;->g:I

    iget v0, p0, Lcom/vivo/speechsdk/d/e;->f:I

    int-to-double v1, v0

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v6

    iget v6, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalTextLength:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    div-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    if-lt v0, v1, :cond_3

    iput v1, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    const/16 v0, 0x63

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    :goto_0
    iput v0, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mProgress:I

    iget p1, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    iget-object v0, p0, Lcom/vivo/speechsdk/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr p1, v0

    iput p1, p0, Lcom/vivo/speechsdk/d/e;->c:I

    iput-boolean v3, p0, Lcom/vivo/speechsdk/d/e;->h:Z

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/vivo/speechsdk/d/e;->h:Z

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lcom/vivo/speechsdk/d/e;->h:Z

    iget-object v1, p0, Lcom/vivo/speechsdk/d/e;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    :goto_1
    iput-boolean v3, p0, Lcom/vivo/speechsdk/d/e;->b:Z

    goto :goto_2

    :cond_5
    iput-boolean v2, p0, Lcom/vivo/speechsdk/d/e;->b:Z

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/d/e;->a(I)V

    iget v0, p0, Lcom/vivo/speechsdk/d/e;->f:I

    iput v0, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    :cond_6
    :goto_2
    iget p1, p0, Lcom/vivo/speechsdk/d/e;->c:I

    return p1
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/d/e;->b:Z

    return v0
.end method
