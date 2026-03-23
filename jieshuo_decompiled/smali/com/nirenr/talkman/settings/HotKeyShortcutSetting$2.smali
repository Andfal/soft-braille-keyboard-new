.class Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayListAdapter;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;Landroid/widget/ArrayListAdapter;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->c:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->a:Landroid/widget/ArrayListAdapter;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->c:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;->b(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->c:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;->c(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p4, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p4, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->c:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;->b(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget-object p4, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p4, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->c:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    const p3, 0x7f0703a2

    :goto_0
    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$2;->c:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    const p3, 0x7f0703a4

    goto :goto_0
.end method
