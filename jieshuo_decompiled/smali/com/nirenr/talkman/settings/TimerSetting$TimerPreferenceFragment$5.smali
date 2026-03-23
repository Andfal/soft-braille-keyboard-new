.class Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;Landroid/widget/TextView;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$5;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$5;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$5;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$5;->b:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1}, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;->e(Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;Landroid/widget/TextView;Ljava/util/ArrayList;)V

    return-void
.end method
