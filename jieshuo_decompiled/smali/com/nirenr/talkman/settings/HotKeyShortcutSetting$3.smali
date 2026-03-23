.class Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Landroid/widget/ArrayListAdapter;

.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/ArrayListAdapter;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->c:Landroid/widget/ArrayListAdapter;

    iput-object p5, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->d:Lorg/json/JSONObject;

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

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->e:Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;->a:[Ljava/lang/String;

    new-instance p4, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;

    invoke-direct {p4, p0, p3}, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3$1;-><init>(Lcom/nirenr/talkman/settings/HotKeyShortcutSetting$3;I)V

    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f070095

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
