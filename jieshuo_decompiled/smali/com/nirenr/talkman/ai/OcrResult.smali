.class public Lcom/nirenr/talkman/ai/OcrResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/ai/OcrResult$OCRListener;,
        Lcom/nirenr/talkman/ai/OcrResult$OcrItem;
    }
.end annotation


# instance fields
.field private a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nirenr/talkman/ai/OcrResult;->b:Ljava/lang/String;

    iput p1, p0, Lcom/nirenr/talkman/ai/OcrResult;->c:I

    return-void
.end method

.method public constructor <init>(I[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nirenr/talkman/ai/OcrResult;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iput p1, p0, Lcom/nirenr/talkman/ai/OcrResult;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/ai/OcrResult;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/ai/OcrResult;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 p1, 0x2

    iput p1, p0, Lcom/nirenr/talkman/ai/OcrResult;->c:I

    return-void
.end method


# virtual methods
.method public getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/ai/OcrResult;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/ai/OcrResult;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "[\u3002\n]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iput-object v1, p0, Lcom/nirenr/talkman/ai/OcrResult;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/ai/OcrResult;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    new-instance v3, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/ai/OcrResult;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    return-object v0
.end method

.method public getJson()Lorg/json/JSONObject;
    .locals 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/ai/OcrResult;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v7, "x"

    iget v8, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "y"

    iget v8, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "width"

    iget v8, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "height"

    iget v8, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "text"

    iget-object v5, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v2, "items"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/ai/OcrResult;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/ai/OcrResult;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v4, v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/ai/OcrResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStringList()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/ai/OcrResult;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/ai/OcrResult;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/nirenr/talkman/ai/OcrResult;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0

    :cond_1
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/nirenr/talkman/ai/OcrResult;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/nirenr/talkman/ai/OcrResult;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nirenr/talkman/ai/OcrResult;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
