.class Lcom/nirenr/talkman/settings/TimerRun$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerRun;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/TimerRun;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerRun;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerRun$7;->a:Lcom/nirenr/talkman/settings/TimerRun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/json/JSONArray;

    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {p0, p1, p2}, Lcom/nirenr/talkman/settings/TimerRun$7;->compare(Lorg/json/JSONArray;Lorg/json/JSONArray;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/json/JSONArray;Lorg/json/JSONArray;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v4, -0x1

    if-ge v1, v2, :cond_1

    return v4

    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-le p1, p2, :cond_2

    return v3

    :cond_2
    if-ge p1, p2, :cond_3

    return v4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return v0
.end method
