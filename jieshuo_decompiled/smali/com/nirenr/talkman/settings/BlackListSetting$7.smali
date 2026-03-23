.class Lcom/nirenr/talkman/settings/BlackListSetting$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/BlackListSetting;->h(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nirenr/talkman/settings/BlackListSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/BlackListSetting;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$7;->c:Lcom/nirenr/talkman/settings/BlackListSetting;

    iput p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$7;->a:I

    iput-object p3, p0, Lcom/nirenr/talkman/settings/BlackListSetting$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$7;->c:Lcom/nirenr/talkman/settings/BlackListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/BlackListSetting;->a(Lcom/nirenr/talkman/settings/BlackListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$7;->a:I

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->remove(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$7;->c:Lcom/nirenr/talkman/settings/BlackListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/BlackListSetting;->b(Lcom/nirenr/talkman/settings/BlackListSetting;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$7;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$7;->c:Lcom/nirenr/talkman/settings/BlackListSetting;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, ""

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f0703bb

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
