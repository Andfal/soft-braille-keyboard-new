.class Lcom/nirenr/talkman/settings/StringListSetting$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/StringListSetting;->i(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/StringListSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/StringListSetting;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/StringListSetting$2;->b:Lcom/nirenr/talkman/settings/StringListSetting;

    iput p2, p0, Lcom/nirenr/talkman/settings/StringListSetting$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/StringListSetting$2;->b:Lcom/nirenr/talkman/settings/StringListSetting;

    iget p2, p0, Lcom/nirenr/talkman/settings/StringListSetting$2;->a:I

    invoke-static {p1, p2}, Lcom/nirenr/talkman/settings/StringListSetting;->f(Lcom/nirenr/talkman/settings/StringListSetting;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/StringListSetting$2;->b:Lcom/nirenr/talkman/settings/StringListSetting;

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
