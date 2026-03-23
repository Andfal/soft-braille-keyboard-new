.class public Lcom/unisound/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:F

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Lcn/yunzhisheng/nlu/OfflineNlu;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/j;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/j;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/j;->c:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/j;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/j;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(FLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/unisound/sdk/j;->b(Ljava/lang/String;)F

    move-result v2

    const-string v3, ""

    cmpl-float p0, p0, v2

    if-lez p0, :cond_0

    move-object p1, v3

    goto :goto_0

    :cond_0
    aget-object p0, v0, v1

    invoke-virtual {p1, p0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static b(Ljava/lang/String;)F
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/high16 p0, -0x3d380000    # -100.0f

    return p0
.end method

.method public static d(Ljava/lang/String;)F
    .locals 1

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/unisound/sdk/j;->b(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x3e380000    # -25.0f

    return p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<s>|</s>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "<[\\w]*>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "/"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/j;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "<s>|</s>"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "<[\\w]*>"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "/"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "\n\n"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/high16 v0, -0x3e380000    # -25.0f

    iput v0, p0, Lcom/unisound/sdk/j;->e:F

    array-length v0, p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-lez v0, :cond_2

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/unisound/sdk/j;->b(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/unisound/sdk/j;->e:F

    if-ne v0, v2, :cond_1

    aget-object p1, p1, v1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v2

    aget-object p1, p1, v0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/unisound/sdk/j;->d:Ljava/lang/String;

    return v2

    :cond_2
    :goto_1
    return v1
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 7

    iget-object v0, p0, Lcom/unisound/sdk/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const-string p1, "FixrecognizeResult -> setResultList: RecognitionResult error for lessing than two lines!"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/unisound/sdk/j;->f:Z

    const-string v3, "RecognizeResult"

    const/high16 v4, -0x3e380000    # -25.0f

    const-string v5, ""

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/unisound/sdk/j;->g:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/unisound/sdk/j;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput v4, p0, Lcom/unisound/sdk/j;->e:F

    array-length p2, p1

    sub-int/2addr p2, v6

    if-lez p2, :cond_b

    aget-object v1, p1, p2

    invoke-static {v1}, Lcom/unisound/sdk/j;->b(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/unisound/sdk/j;->e:F

    :goto_0
    if-ge v0, p2, :cond_3

    iget-object v1, p0, Lcom/unisound/sdk/j;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/unisound/sdk/j;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcn/yunzhisheng/nlu/OfflineNlu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v6

    :cond_4
    :goto_1
    const-string p1, "setResultList : nluConfigFile didn\'t exists or OfflineNlu is null"

    invoke-static {v3, p1}, Lcom/unisound/common/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    iget-boolean p2, p0, Lcom/unisound/sdk/j;->c:Z

    if-eqz p2, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput v4, p0, Lcom/unisound/sdk/j;->e:F

    array-length p2, p1

    sub-int/2addr p2, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResultList : arrayOfstring.length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_b

    aget-object v1, p1, p2

    invoke-static {v1}, Lcom/unisound/sdk/j;->b(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/unisound/sdk/j;->e:F

    :goto_2
    if-ge v0, p2, :cond_6

    :try_start_0
    aget-object v1, p1, v0

    iget v2, p0, Lcom/unisound/sdk/j;->e:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unisound/sdk/j;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "result.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/unisound/common/aa;->b(Ljava/lang/String;FLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/j;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return v6

    :cond_7
    iget-boolean p2, p0, Lcom/unisound/sdk/j;->b:Z

    if-nez p2, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput v4, p0, Lcom/unisound/sdk/j;->e:F

    array-length p2, p1

    sub-int/2addr p2, v6

    if-lez p2, :cond_b

    aget-object v1, p1, p2

    invoke-static {v1}, Lcom/unisound/sdk/j;->b(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/unisound/sdk/j;->e:F

    :goto_4
    if-ge v0, p2, :cond_8

    iget-object v1, p0, Lcom/unisound/sdk/j;->a:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return v6

    :cond_9
    const-string p2, "<s>|</s>"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    const-string v2, "<[\\w]*>"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput v4, p0, Lcom/unisound/sdk/j;->e:F

    array-length p2, p1

    sub-int/2addr p2, v6

    if-lez p2, :cond_b

    aget-object v1, p1, p2

    invoke-static {v1}, Lcom/unisound/sdk/j;->b(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/unisound/sdk/j;->e:F

    :goto_5
    if-ge v0, p2, :cond_a

    iget-object v1, p0, Lcom/unisound/sdk/j;->a:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    return v6

    :cond_b
    :goto_6
    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/j;->i:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/sdk/j;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
