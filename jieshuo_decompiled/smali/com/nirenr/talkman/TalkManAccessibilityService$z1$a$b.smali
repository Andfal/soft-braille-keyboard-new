.class Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a$b;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const-string v0, "{}"

    const v1, 0x7f0704a3

    invoke-static {p2, v1, v0}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;

    iget-object p2, p2, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a$b;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    invoke-static {p2}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;->d:Lcom/nirenr/talkman/TalkManAccessibilityService$z1;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;

    iget-object p2, p2, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;->d:Lcom/nirenr/talkman/TalkManAccessibilityService$z1;

    iget-object p2, p2, Lcom/nirenr/talkman/TalkManAccessibilityService$z1;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadNotificationBlackList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a$b;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;->d:Lcom/nirenr/talkman/TalkManAccessibilityService$z1;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$z1;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->beep()V

    :goto_1
    return-void
.end method
